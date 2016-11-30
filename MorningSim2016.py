import mysql.connector


def show_location(loc):
    cur = db.cursor()
    sql = "SELECT Description FROM LOCATION WHERE ID='" + str(loc) + "'"
    cur.execute(sql)
    for row in cur:
        print (row[0])
    return

def show_items(loc):
    cur = db.cursor()
    sql = "SELECT ItemTypeID, ID FROM ITEM WHERE LocationID='" + str(loc) + "'"
    cur.execute(sql)
    if cur.rowcount >= 1:
        print("You see the following:")
        for row in cur.fetchall():
            cur2.db.cursor()
            sql2 = "SELECT Description FROM ITEMTYPE WHERE ID='" + row[0] + "'"
            cur2.execute(sql2)
            if cur2.rowcount >= 1:
                for row2 in cur2.fetchall():
                    if row2[1]==1:
                        print(" - " + row[0])
    return

def show_passages(loc):
    print("You can go ")
    cur = db.cursor()
    sql = "SELECT Description, Direction FROM PASSAGE WHERE LocationID='" + str(loc) + "'"
    cur.execute(sql)
    for row in cur.fetchall():
        print(row[0], end=", ")
    print(".")
    return

def inventory():
    cur = db.cursor()
    sql = "SELECT ItemID FROM INVENRORY"
    cur.execute(sql)
    if cur.rowcount == 0:
        print("Your inventory is empty")
    else:
        print("You have: ")
        for row in cur.fetchall():
            cur2 = db.cursor()
            sql2 = "SELECT ItemTypeID FROM ITEM WHERE ID='" + row[0] + "'"
            cur2.execute(sql2)
            for row2 in cur2.fetchall():
                cur3 = db.cursor()
                sql3 = "SELECT Description FROM ITEMTYPE WHERE ID='" + row2[0] + "'"
                cur3.execute(sql3)
                for row3 in cur3.fetchall():
                    print(row3[0], end=", ")
    print(".")
    return

def look_around(loc):
    print("-"*80)
    show_location(loc)
    if (loc!="EXIT"):
        show_items(loc)
        show_passages(loc)
    return

def move(loc, description):
    destination = loc
    cur = db.cursor()
    sql = "SELECT Direction FROM PASSAGE WHERE LocationID='" + str(loc) + "' AND Description='" + description + "'"
    cur.execute(sql)
    if cur.rowcount >= 1:
        for row in cur.fetchall():
            destination = row[0]
    else:
        destination = loc
    return destination

# Avataan yhteys tietokantaan
db = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "2710",
    db = "ms16db",
    buffered = True)

# Init player loc
loc = 1
action = ""

# Clear console
print("\n"*1000)

look_around(loc)

#Main loop
while action != "quit" and loc != "EXIT":

    print("")
    input_s = input("Your action? ").split()
    if len(input_s) >= 1:
        action = input_s[0].lower()
    else:
        action = ""
    if len(input_s) >= 2:
        target = input_s[len(input_s)-1].lower()
    else:
        target("")

    print("")

    #move
    if action=="go" or action=="walk" or action=="move":
        newloc = move(loc, target)
        if loc == newloc:
            print("You can't " + action + "there.");
        else:
            loc = newloc
            look_around(loc)

    elif action != "quit" and action != "":
        print("I don't know how to " + action)

if (loc=="EXIT"):
    print("Well done!")
else:
    print("Bye!")
db.rollback()



