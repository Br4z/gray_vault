---
reviewed_on: "2025-10-12"
---

# 3D modeling

## Introduction to 3D modeling for video Games

### Vertex

It is a single point in 3D space that represents a corner or junction where two or more edges meet. Each vertex is defined by three coordinates ($X$, $Y$ and $Z$) that specify its exact location in the 3D coordinate system. Vertices are the most fundamental building blocks of any 3D model-they define the shape's basic structure and all other geometric elements are derived from them.

In game development, vertices store additional information beyond position, including UV coordinates for texture mapping, vertex normals for lighting calculations, and color data. The number of vertices directly impacts a model's performance: more vertices create smoother, more detailed shapes but require more memory and processing power. Efficient models for games balance detail with vertex count to maintain real-time performance.

### Edge

It is a straight line segment connecting two vertices, forming the boundaries and structural framework of a 3D shape. Edges outline the shape and define where faces begin and end, creating the wireframe structure visible in modeling software's wireframe view mode. Multiple edges connect to form edge loops (continuous sequences that follow the natural contours of a model).

#### Edge flow

It refers to the strategic arrangement and direction of edges across a mesh, which is critical for animation and deformation. Proper edge flow ensures that when a model bends or moves, the geometry deforms naturally without pinching or stretching. In character modeling, edge loops must follow muscle structure and joint locations to enable realistic animation.

### Face

A face (also called a polygon) is a flat surface enclosed by three or more edges, forming the visible exterior of a 3D model. Faces are not visible in wireframe mode but become apparent when the model is shaded or rendered. The most common face types are triangles (3 edges) and quads (4 edges), with quads preferred for animation because they subdivide predictably and deform smoothly.

### Polygon mesh

It is the complete collection of vertices, edges, and faces that define a 3D object's shape. Face density determines the model's level of detail: more faces allow finer surface detail but increase rendering costs. Game models require optimized face counts, enough polygons for visual quality without overwhelming the graphics processor. This balance is essential for maintaining smooth frame rates in real-time applications.

## Types of modeling

### Box

Also called subdivision modeling, is a fundamental 3D modeling technique that starts with primitive geometric shapes (typically a cube) and progressively refines them into complex forms. The modeler manipulates vertices, edges, and faces by extruding, subdividing, and sculpting the initial simple geometry until the desired shape emerges. This technique is particularly effective for creating hard-surface models like buildings, vehicles, furniture, and architectural elements in games.

The workflow follows an iterative process: begin with basic proportions using the primitive shape, subdivide faces to add detail where needed, and extrude edges to build out forms. Box modeling offers precise control over polygon topology, making it ideal for creating clean, optimized meshes suitable for real-time game engines. This method contrasts with digital sculpting, which is better suited for organic shapes like characters and creatures.

## UV mapping

It is the process of unwrapping a 3D model's surface onto a 2D plane to accurately apply textures. The letters "U" and "V" represent the 2D coordinate system (analogous to X and Y), which maps texture pixels to specific points on the 3D geometry. Without proper UV mapping, textures would appear stretched, distorted, or misaligned on the model surface.

The process involves "unwrapping" the 3D mesh like unfolding a cardboard box, creating flat islands that represent different parts of the model. Artists use specialized tools in 3D software to minimize distortion, optimize texture space usage, and create seams in less visible areas. Efficient UV layouts ensure textures render correctly in-game while maximizing texture resolution where detail matters most. UV mapping is essential before the texturing stage in the game asset pipeline.

## Optimization

### Surface normals

It is a vector perpendicular to a surface that indicates which direction that surface is facing. Normals are invisible but essential for lighting calculations, the game engine uses normal vectors to determine how light should interact with each part of the model. The angle between a surface normal and incoming light direction determines the surface brightness.

There are two types: **face normals** are perpendicular to entire flat polygons, while **vertex normals** are calculated by averaging the face normals of all polygons that share a vertex. Vertex normals enable smooth shading techniques like [[college/semesters/10/desarrollo_de_videojuegos/classes/06-3D_modeling#Phong Shading|Phong shading]], which interpolates normals across polygon surfaces to create the illusion of curved, smooth surfaces even on low-polygon models. This makes surface normals critical for optimization-proper normal calculation allows simple geometry to appear detailed when lit, significantly improving performance without sacrificing visual quality.

### Phong Shading

Phong shading is a lighting and shading technique used to create smooth, realistic-looking surfaces on 3D models by interpolating surface normals across polygons. Named after computer graphics pioneer Bui Tuong Phong, this method calculates lighting per-pixel rather than per-vertex, producing smooth gradients of light and shadow even on low-polygon geometry.

The technique is crucial for **optimization in game development** because it allows models to appear smoother without requiring excessive polygon counts. Phong shading calculates three lighting components: ambient (general environmental light), diffuse (direct light scattering), and specular (bright highlights on shiny surfaces). This creates the illusion of curved surfaces on flat polygons, significantly reducing the computational cost compared to using high-resolution geometry. Modern game engines often use variations of Phong shading for real-time rendering to balance visual quality with performance.

## Bump mapping and normal maps

Bump mapping is a texture-based technique that simulates surface detail and depth without adding actual geometry. It works by perturbing (slightly altering) the surface normals during the lighting calculation, creating the illusion of bumps, dents, and surface irregularities. This allows low-polygon models to appear highly detailed when lit.

Normal maps are an advanced form of bump mapping that stores directional information (X, Y, Z vectors) in RGB color channels, typically appearing as purple-blue textures. Each pixel in a normal map encodes the direction a surface point "pretends" to face, allowing for more complex and accurate lighting calculations than traditional bump maps. Normal maps are often created by "baking" detail from high-polygon models onto low-polygon game models, preserving visual fidelity while maintaining performance.
