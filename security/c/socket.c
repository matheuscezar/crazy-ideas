#include <stdio.h>
#include <netdb.h>

main()
{
	int meusocket;
	int conecta;

	struct sockaddr_in alvo;
	meusocket = socket(AF_INET, SOCK_STREAM, 0);
	alvo.sin_family = AF_INET;
	alvo.sin_port = htons(80);
	alvo.sin_addr.s_addr = inet_addr("10.0.0.1");

	conecta = connect(meusocket, (struct sockaddr *)&alvo, sizeof alvo);

	if (conecta == 0)
	{
		printf("Porta aberta\n");
		close(meusocket);
		close(conecta);
	}else{
		printf("Porta fechada\n");
	}
}	
