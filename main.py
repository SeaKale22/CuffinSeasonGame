# main game loop
import pygame
from sys import exit

pygame.init()
screen = pygame.display.set_mode((1000, 500))
pygame.display.set_caption('Cuffin Season')
test_font = pygame.font.Font(None, 50)
text_box = pygame.Surface((1000, 300))
text_box.fill('DarkGreen')

# surfaces
text_surface = test_font.render('This is a test', True, 'LightBlue')

# primary game loop
while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            exit()
    screen.blit(text_box, (0, 400))
    screen.blit(text_surface, (100, 450))

    pygame.display.update()
