#include "sysdolphin/baselib/memory.h"

void HSD_Free(void* ptr)
{
    OSFreeToHeap(HSD_GetHeap(), ptr);
}