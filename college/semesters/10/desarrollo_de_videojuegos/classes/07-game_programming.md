---
reviewed_on: "2025-10-12"
---

# Game programming

## Structure of a video game

### Game loop

The game loop is the core architectural pattern that drives all video games, continuously running from when the game starts until it exits. It represents the heartbeat of every interactive application, executing the same sequence of operations repeatedly.

The standard game loop follows three main phases in each iteration: **process input** (reading player actions from keyboard, mouse, controller, or touch), **update** (advancing game state, moving objects, running AI, checking collisions, applying physics), and **render** (drawing the current game state to the screen). This cycle repeats continuously, creating the illusion of real-time interaction.

Time management is crucial—modern game loops use delta time (the elapsed time since the last frame) to ensure consistent gameplay speed regardless of frame rate variations. This prevents games from running faster on powerful computers and slower on weaker ones.

### Rasterization

It is the real-time rendering technique that converts 3D geometric primitives (triangles, vertices) into 2D pixels on the screen. It is the dominant rendering method used in video games because of its computational efficiency and speed.

The rasterization process works by projecting 3D vertices onto a 2D plane (the screen), then filling in the pixels within each triangle using interpolation. The algorithm determines which pixels are covered by each polygon, calculates their colors based on lighting and textures, and writes them to the framebuffer.

Unlike raytracing, rasterization does not simulate actual light physics—instead, it uses approximations and tricks (like shadow maps and reflection probes) to create realistic lighting effects quickly. The trade-off is speed for physical accuracy: rasterization renders scenes much faster but with less realistic lighting, reflections, and shadows compared to [[college/semesters/10/desarrollo_de_videojuegos/classes/07-game_programming#Raytracing|raytracing]].

### Raytracing

It is an advanced rendering technique that simulates the physical behavior of light by tracing rays from the camera through each pixel into the scene. Unlike rasterization, raytracing follows the path of light rays as they bounce off surfaces, refract through transparent materials, and interact with the environment.

The algorithm works by casting a ray from the camera's viewpoint through each pixel on the screen into the 3D scene. When a ray intersects a surface, the algorithm calculates the **color** by considering direct lighting, **shadows** (by casting additional rays toward light sources), **reflections** (by bouncing rays off shiny surfaces), and **refractions** (by bending rays through glass or water). This recursive process creates photorealistic images with accurate reflections, shadows, and global illumination.

## Physics

### Raycasting

It is a simplified, performance-optimized version of raytracing that casts rays into the scene but only calculates the first intersection point without recursive bouncing. In game development, raycasting serves multiple practical purposes beyond rendering.

**Primary applications** in games include **collision detection** (determining if a projectile hits a target by casting a ray along its path), **line-of-sight** calculations for AI (checking if an enemy can "see" the player by casting a ray between them), and **mouse picking** (determining which 3D object the player clicked by casting a ray from the cursor into the scene).
