import array
import csv
import string
from PIL import Image
from enum import Enum

GRID_SIZE = 84


class Shape(Enum):
    NORMAL = 1
    ROUNDED = 2
    SPIKED = 3


class Advancement:
    adv_name: string = ""

    def __init__(self, adv_name: string, shape: Shape, next: array = None, prev: int = -1):
        self.adv_name = adv_name
        self.shape = shape
        self.next = next
        self.prev = prev

    def get_image_path(self):
        return self.adv_name.lower().replace(" ", "_").replace(".", "_").replace(",", "_").replace("'", "_").replace("!", "_").replace("?", "_").replace(
            "\"", "_") + ".png"

    def get_offset(self):
        if self.shape == Shape.NORMAL:
            return 6, 6
        elif self.shape == Shape.ROUNDED:
            return 9, 3
        else:
            return 3, 3



    def get_size(self):
        if self.shape == Shape.NORMAL:
            return 72, 72
        elif self.shape == Shape.ROUNDED:
            return 66, 78
        else:
            return 78, 78


advancement_list = [
    Advancement("Who is Cutting Onions?", Shape.NORMAL, [40], 17),  # 0
    Advancement("Oh Shiny", Shape.NORMAL, None, 17),  # 1
    Advancement("Suit Up", Shape.NORMAL, [9], 39),  # 2
    Advancement("Very Very Frightening", Shape.NORMAL, None, 72),  # 3
    Advancement("Hot Stuff", Shape.NORMAL, [31], 39),  # 4
    Advancement("Free the End", Shape.NORMAL, [38, 12, 46], 52),  # 5
    Advancement("A Furious Cocktail", Shape.SPIKED, [11], 19),  # 6
    Advancement("Best Friends Forever", Shape.NORMAL, [79], 65),  # 7
    Advancement("Bring Home the Beacon", Shape.NORMAL, [61], 62),  # 8
    Advancement("Not Today, Thank You", Shape.NORMAL, None, 2),  # 9
    Advancement("Isn't It Iron Pick", Shape.NORMAL, [70], 39),  # 10
    Advancement("Local Brewery", Shape.NORMAL, [33], 6),  # 11
    Advancement("The Next Generation", Shape.ROUNDED, None, 5),  # 12
    Advancement("Fishy Business", Shape.NORMAL, [28], 65),  # 13
    Advancement("Hot Tourist Destinations", Shape.SPIKED, None, 15),  # 14
    Advancement("This Boat Has Legs", Shape.NORMAL, [14], 17),  # 15
    Advancement("Sniper Duel", Shape.SPIKED, None, 35),  # 16
    Advancement("Nether", Shape.NORMAL, [2, 15, 64, 0, 71, 60, 58, 44], -1),  # 17
    Advancement("Great View From Up Here", Shape.SPIKED, None, 30),  # 18
    Advancement("How Did We Get Here?", Shape.SPIKED, None, 6),  # 19
    Advancement("Bullseye", Shape.SPIKED, None, 35),  # 20
    Advancement("Spooky Scary Skeleton", Shape.NORMAL, [62], 71),  # 21
    Advancement("Two by Two", Shape.SPIKED, None, 78),  # 22
    Advancement("Stone Age", Shape.NORMAL, None, 73),  # 23
    Advancement("Two Birds, One Arrow", Shape.SPIKED),  # 24
    Advancement("We Need to Go Deeper", Shape.NORMAL),  # 25
    Advancement("Who's the Pillager Now?", Shape.NORMAL),  # 26
    Advancement("Getting an Upgrade", Shape.NORMAL),  # 27
    Advancement("Tactical Fishing", Shape.NORMAL),  # 28
    Advancement("Zombie Doctor", Shape.ROUNDED),  # 29
    Advancement("The City at the End of the Game", Shape.NORMAL),  # 30
    Advancement("Ice Bucket Challenge", Shape.NORMAL),  # 31
    Advancement("Remote Getaway", Shape.NORMAL),  # 32
    Advancement("Into Fire", Shape.NORMAL),  # 33
    Advancement("War Pigs", Shape.NORMAL),  # 34
    Advancement("Take Aim", Shape.NORMAL),  # 35
    Advancement("Total Beelocation", Shape.NORMAL),  # 36
    Advancement("Arbalistic", Shape.SPIKED),  # 37
    Advancement("The End... Again...", Shape.ROUNDED),  # 38
    Advancement("Acquire Hardware", Shape.NORMAL),  # 39
    Advancement("Not Quite \"Nine\" Lives", Shape.NORMAL),  # 40
    Advancement("Cover Me With Diamonds", Shape.NORMAL),  # 41
    Advancement("Sky's the Limit", Shape.NORMAL),  # 42
    Advancement("Hired Help", Shape.ROUNDED),  # 43
    Advancement("Return to Sender", Shape.SPIKED),  # 44
    Advancement("Sweet Dreams", Shape.NORMAL),  # 45
    Advancement("You Need a Mint", Shape.ROUNDED),  # 46
    Advancement("Adventure", Shape.NORMAL),  # 47
    Advancement("Monsters Hunted", Shape.SPIKED),  # 48
    Advancement("Enchanter", Shape.NORMAL),  # 49
    Advancement("Voluntary Exile", Shape.NORMAL),  # 50
    Advancement("Eye Spy", Shape.NORMAL),  # 51
    Advancement("The End", Shape.NORMAL),  # 52
    Advancement("Serious Dedication", Shape.SPIKED),  # 53
    Advancement("Postmortal", Shape.ROUNDED),  # 54
    Advancement("Monster Hunter", Shape.NORMAL),  # 55
    Advancement("Adventuring Time", Shape.SPIKED),  # 56
    Advancement("A Seedy Place", Shape.NORMAL),  # 57
    Advancement("Those Were the Days", Shape.NORMAL),  # 58
    Advancement("Hero of the Village", Shape.SPIKED),  # 59
    Advancement("Hidden in the Depths", Shape.NORMAL),  # 60
    Advancement("Beaconator", Shape.ROUNDED),  # 61
    Advancement("Withering Heights", Shape.NORMAL),  # 62
    Advancement("A Balanced Diet", Shape.SPIKED),  # 63
    Advancement("Subspace Bubble", Shape.SPIKED),  # 64
    Advancement("Husbandry", Shape.NORMAL),  # 65
    Advancement("Country Lode, Take Me Home", Shape.NORMAL),  # 66
    Advancement("Bee Our Guest", Shape.NORMAL),  # 67
    Advancement("What a Deal!", Shape.NORMAL),  # 68
    Advancement("Uneasy Alliance", Shape.SPIKED),  # 69
    Advancement("Diamonds!", Shape.NORMAL),  # 70
    Advancement("A Terrible Fortress", Shape.NORMAL),  # 71
    Advancement("A Throwaway Joke", Shape.NORMAL),  # 72
    Advancement("Minecraft", Shape.NORMAL),  # 73
    Advancement("Sticky Situation", Shape.NORMAL),  # 74
    Advancement("Ol' Betsy", Shape.NORMAL),  # 75
    Advancement("Cover Me in Debris", Shape.SPIKED),  # 76
    Advancement("The End?", Shape.NORMAL),  # 77
    Advancement("The Parrots and the Bats", Shape.NORMAL),  # 78
    Advancement("A Complete Catalogue", Shape.SPIKED),  # 79
    Advancement("Getting Wood", Shape.NORMAL),  # 80
    Advancement("Time to Mine!", Shape.NORMAL),  # 81
    Advancement("Hot Topic", Shape.NORMAL),  # 82
    Advancement("Bake Bread", Shape.NORMAL),  # 83
    Advancement("The Lie", Shape.SPIKED),  # 84
    Advancement("On a Rail", Shape.ROUNDED),  # 85
    Advancement("Time to Strike!", Shape.NORMAL),  # 86
    Advancement("Cow Tipper", Shape.NORMAL),  # 87
    Advancement("When Pigs Fly", Shape.SPIKED),  # 88
    Advancement("Overkill", Shape.ROUNDED),  # 89
    Advancement("Librarian", Shape.NORMAL),  # 90
    Advancement("Overpowered", Shape.NORMAL),  # 91
    Advancement("Wax On", Shape.NORMAL),  # 92
    Advancement("Wax Off", Shape.NORMAL),  # 93
    Advancement("The Cutest Predator", Shape.NORMAL),  # 94
    Advancement("The Healing Power of Friendship", Shape.NORMAL),  # 95
    Advancement("Is It a Bird?", Shape.NORMAL),  # 96
    Advancement("Is It a Balloon?", Shape.NORMAL),  # 97
    Advancement("Is It a Plane?", Shape.NORMAL),  # 98
    Advancement("Surge Protector", Shape.NORMAL),  # 99
    Advancement("Light as a Rabbit", Shape.NORMAL),  # 100
    Advancement("Glow and Behold!", Shape.NORMAL),  # 101
    Advancement("Whatever Floats Your Goat!", Shape.NORMAL),  # 102
    Advancement("Archipelago", Shape.NORMAL),  # 103
]


def place_image(image: Image, val: string, rowPos: int, colPos: int):
    if val == "":
        return
    current_adv = advancement_list[int(val)]
    current_image = Image.open(current_adv.get_image_path())
    pos = tuple(sum(x) for x in zip((colPos * GRID_SIZE, rowPos * GRID_SIZE), current_adv.get_offset()))
    pos2 = tuple(sum(x) for x in zip((colPos * GRID_SIZE, rowPos * GRID_SIZE), (66, 66)))
    print(current_adv.adv_name, pos2)
    image.paste(current_image, pos)


if __name__ == '__main__':
    placement_grid = []
    max_row_len = 0
    with open('placement_grid.csv') as csvfile:
        reader = csv.reader(csvfile, delimiter=',')
        for row in reader:
            placement_grid.append(row)
            if len(row) > max_row_len:
                max_row_len = len(row)
    image = Image.new(mode='RGBA', size=(max_row_len * GRID_SIZE, len(placement_grid) * GRID_SIZE), color=0)
    rowPos = 0
    colPos = 0
    for row in placement_grid:
        for val in row:
            place_image(image, val, rowPos, colPos)
            colPos += 1
        rowPos += 1
        colPos = 0
    image.save("all_base.png")
