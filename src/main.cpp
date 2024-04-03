#include "raylib.h"

int main()
{
    const int screen_width = 800;
    const int screen_height = 500;

    InitWindow(screen_width, screen_height, "Premake5 Raylib Starter");

    SetTargetFPS(120);

    while (!WindowShouldClose())
    {
        BeginDrawing();

        ClearBackground(LIGHTGRAY);

        DrawText("Hello World!", 800 / 2 - 65, 500 / 2, 20, BLACK);

        EndDrawing();
    }

    CloseWindow();

    return 0;
}