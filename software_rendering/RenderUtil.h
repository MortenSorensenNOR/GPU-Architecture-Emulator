#pragma once
#include "display/GAEDisplay.h"
#include "gml/GML.h"

typedef struct {
    int r, g, b;   
} color_t;

typedef struct {
    vec4 vert[3];
    vec2 uv[3];
    color_t color[3];
} triangle_t;

typedef struct {
    vec4 pos;

    int* prim;
    vec4* vert;
    vec3* norm;
    vec2* uv;
    color_t* colors;

    int vert_buffer_size;
    int prim_buffer_size;
    int uv_buffer_size;
    int color_buffer_size;
} mesh_t;

typedef struct {
    vec3 pos;

    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
} light_t;

int color_to_int(const color_t c);
vec3 color_to_vec3(const color_t c);
color_t color_interpolate(const color_t a, const color_t b, double t);

vec3 get_barycentric_coordinate2d(const vec2 vert[3], const vec2* p);
vec3 get_barycentric_coordinate3d(const vec3 vert[3], const vec3* p);
vec2 get_uv_coord(const triangle_t* t, const vec3* p);

void transform_triangle(const vec4 vert[3], vec3 transformed_vert[3], const mat4* model, const mat4* view, const mat4* projection, int s_width, int s_height, double z_near, double z_far);

void bresenham(GAEDisplay_t* disp, int x0, int y0, int x1, int y1, int color);
void draw_triangle_wireframe(GAEDisplay_t* disp, const vec2 vert[3], int color);
void draw_triangle_filled(GAEDisplay_t* disp, const vec3 vert[3], const vec2 uv[3], const color_t color[3], const vec3 normals[3], const light_t* light);

void draw_triangle_filled2(GAEDisplay_t* disp, const vec3 vert[3], const vec2 uv[3], const color_t vert_color[3], const vec3 normals[3], const light_t* light);
void fill_top_flat_triangle(GAEDisplay_t* disp, const vec3 vert[3], const vec2 uv[3], const color_t vert_color[3], const vec3 normals[3], const light_t* light);
void fill_bottom_flat_triangle(GAEDisplay_t* disp, const vec3 vert[3], const vec2 uv[3], const color_t vert_color[3], const vec3 normals[3], const light_t* light);