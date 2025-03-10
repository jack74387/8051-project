#include <8051.h>

void main()
{
	char status = 0;
	while (1) {
		P2 = status ? 0xff : 0x00;
		for (unsigned i = 0; i < 100; i ++) {
			for (unsigned j = 0; j < 255; j ++) {
			}
		}
		status = ~status;
	}
}