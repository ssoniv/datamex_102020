
# Soldier
import random

class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health -= damage

# Viking


class Viking(Soldier):
    def __init__(self, name, health, strength):
        Soldier.__init__(self, health, strength)
        self.name = name

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return f'{self.name} has received {damage} points of damage'
        return f"{self.name} has died in act of combat"

    def battleCry(self):
        return "Odin Owns You All!"


# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        Soldier.__init__(self, health, strength)

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0 :
            return f'A Saxon has received {damage} points of damage'
        return f"A Saxon has died in combat"
# War


class War():
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []

    def addViking(self,viking):
        self.vikingArmy.append(viking)

    def addSaxon(self,saxon):

        self.saxonArmy.append(saxon)

    def vikingAttack(self):
        random.shuffle(self.vikingArmy)
        random.shuffle(self.saxonArmy)
        viking = self.vikingArmy.pop()
        saxon = self.saxonArmy.pop()

        result = saxon.receiveDamage(viking.strength)
        self.vikingArmy.append(viking)
        if saxon.health >0:
            self.saxonArmy.append(saxon)
        return result

    def saxonAttack(self):
        random.shuffle(self.vikingArmy)
        random.shuffle(self.saxonArmy)
        viking = self.vikingArmy.pop()
        saxon = self.saxonArmy.pop()

        result = viking.receiveDamage(saxon.strength)
        self.saxonArmy.append(saxon)
        if viking.health > 0:
            self.vikingArmy.append(viking)
        return result

    def showStatus(self):
        if not self.saxonArmy:
            return 'Vikings have won the war of the century!'
        elif not self.vikingArmy:
            return 'Saxons have fought for their lives and survive another day...'
        else:
            return 'Vikings and Saxons are still in the thick of battle.'














