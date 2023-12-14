# classes for NPCs and PC
import pygame


class Npc(pygame.sprite.Sprite):
    # the base for npcs
    def __init__(self):
        super().__init__()
        # self.image =  import char's image
        # self.rect = define character's rectagngle
        self.name = ''  # character's name


class PlayerCharacter(pygame.sprite.Sprite):
    # base for main player character
    def __init__(self):
        super().__init__()
        self.image = pygame.image.load('image_path').convert_alpha  # Load character's image
        self.rect = self.image.get_rect()

    def set_preferences(self, **attributes):
        # Set player's attributes
        for attribute, value in attributes.items():
            setattr(self, attribute, value)

    def PlayerTalk(self):
        # chages player's image to talking
        self.image = pygame.image.load('talking_image_path').convert_alpha  # Load character's image
