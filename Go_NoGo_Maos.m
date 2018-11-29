        %%%%%%%%%%%%%%%%%%%%%%%%%%%
                     

clear all
close all

nome = input('Digite o nome do voluntário:','s');

Screen('Preference', 'SkipSyncTests', 1);

peixe = imread('peixe.jpg');
tubarao = imread('tubarao.jpg');
fb_positivo = imread('fb_positivo.jpg');
fb_negativo = imread('fb_negativo.jpg');
fb_tubarao = imread('fb_tubarao.jpg');

treino = imread('Slide1a.jpg');
inblocos = imread('Slide2a.jpg');
abertura = imread('abertura.jpg');
final = imread('final.jpg'); 
rest = imread('rest.jpg');
intervalo = imread('intervalo.jpg');

%%%%resting%%%%% 
slide1=imread('Slide1.jpg');
slide2=imread('Slide2.jpg');
slide3=imread('Slide3.jpg');
slide4=imread('Slide4.jpg');     
slide5=imread('Slide5.jpg');
slide6=imread('Slide6.jpg');
slide7=imread('Slide7.jpg');
slide8=imread('Slide8.jpg');
slide9=imread('Slide9.jpg');
slide10=imread('Slide10.jpg');
slide11=imread('Slide11.jpg');
slide12=imread('Slide12.jpg');
slide13=imread('Slide13.jpg');
slide14=imread('Slide14.jpg');
slide15=imread('Slide15.jpg');
slide16=imread('Slide16.jpg');
slide17=imread('Slide17.jpg');
slide18=imread('Slide18.jpg');
slide19=imread('Slide19.jpg');
slide20=imread('Slide20.jpg');
slide21=imread('Slide21.jpg');
slide22=imread('Slide22.jpg');
slide23=imread('Slide23.jpg');
slide24=imread('Slide24.jpg');
slide25=imread('Slide25.jpg');
slide26=imread('Slide26.jpg');
slide27=imread('Slide27.jpg');
slide28=imread('Slide28.jpg');
slide29=imread('Slide29.jpg');
slide30=imread('Slide30.jpg');
slide31=imread('Slide31.jpg');
slide32=imread('Slide32.jpg');
slide33=imread('Slide33.jpg');
slide34=imread('Slide34.jpg');

SAIDA=zeros(5,5);

whichScreen = 0;
try
    HideCursor();
    wPtr = Screen( 'OpenWindow', whichScreen);
    
    imTexture_peixe = Screen('makeTexture',wPtr,peixe);
    imTexture_tubarao = Screen('makeTexture',wPtr,tubarao);
    imTexture_fb_positivo = Screen('makeTexture',wPtr,fb_positivo);
    imTexture_fb_negativo = Screen('makeTexture',wPtr,fb_negativo);
    imTexture_fb_tubarao = Screen('makeTexture',wPtr,fb_tubarao);
    
    % textura das telas intermediarias
    
    imTexture_treino = Screen('makeTexture',wPtr,treino);
    imTexture_inblocos = Screen('makeTexture',wPtr,inblocos);
    imTexture_abertura = Screen('makeTexture',wPtr,abertura);
    imTexture_final = Screen('makeTexture',wPtr,final);
    imTexture_rest = Screen('makeTexture',wPtr,rest);
    imTexture_intervalo = Screen('makeTexture',wPtr,intervalo);
    
    % resting
    
    imTexture_slide = cell(1,34);
    
imTexture_slide{1,1}=Screen('makeTexture',wPtr,slide1);
imTexture_slide{1,2}=Screen('makeTexture',wPtr,slide2);
imTexture_slide{1,3}=Screen('makeTexture',wPtr,slide3);
imTexture_slide{1,4}=Screen('makeTexture',wPtr,slide4);
imTexture_slide{1,5}=Screen('makeTexture',wPtr,slide5);
imTexture_slide{1,6}=Screen('makeTexture',wPtr,slide6);
imTexture_slide{1,7}=Screen('makeTexture',wPtr,slide7);
imTexture_slide{1,8}=Screen('makeTexture',wPtr,slide8);
imTexture_slide{1,9}=Screen('makeTexture',wPtr,slide9);
imTexture_slide{1,10}=Screen('makeTexture',wPtr,slide10);
imTexture_slide{1,11}=Screen('makeTexture',wPtr,slide11);
imTexture_slide{1,12}=Screen('makeTexture',wPtr,slide12);
imTexture_slide{1,13}=Screen('makeTexture',wPtr,slide13);
imTexture_slide{1,14}=Screen('makeTexture',wPtr,slide14);
imTexture_slide{1,15}=Screen('makeTexture',wPtr,slide15);
imTexture_slide{1,16}=Screen('makeTexture',wPtr,slide16);
imTexture_slide{1,17}=Screen('makeTexture',wPtr,slide17);
imTexture_slide{1,18}=Screen('makeTexture',wPtr,slide18);
imTexture_slide{1,19}=Screen('makeTexture',wPtr,slide19);
imTexture_slide{1,20}=Screen('makeTexture',wPtr,slide20);
imTexture_slide{1,21}=Screen('makeTexture',wPtr,slide21);
imTexture_slide{1,22}=Screen('makeTexture',wPtr,slide22);
imTexture_slide{1,23}=Screen('makeTexture',wPtr,slide23);
imTexture_slide{1,24}=Screen('makeTexture',wPtr,slide24);
imTexture_slide{1,25}=Screen('makeTexture',wPtr,slide25);
imTexture_slide{1,26}=Screen('makeTexture',wPtr,slide26);
imTexture_slide{1,27}=Screen('makeTexture',wPtr,slide27);
imTexture_slide{1,28}=Screen('makeTexture',wPtr,slide28);
imTexture_slide{1,29}=Screen('makeTexture',wPtr,slide29);
imTexture_slide{1,30}=Screen('makeTexture',wPtr,slide30);
imTexture_slide{1,31}=Screen('makeTexture',wPtr,slide31);
imTexture_slide{1,32}=Screen('makeTexture',wPtr,slide32);
imTexture_slide{1,33}=Screen('makeTexture',wPtr,slide33);
imTexture_slide{1,34}=Screen('makeTexture',wPtr,slide34);
  
  
    %INICIO DAS APRESENTACOES
   
    
    
    Inicio_Experimento = GetSecs;
    
    Screen('DrawTexture', wPtr , imTexture_abertura); %Fill the buffer with the first texture
    Screen('Flip', wPtr ); %update the display with the buffer content
    while KbCheck; end
    while ~KbCheck; end
    
        %%%%%%%%%%%%%%%%% TREINO %%%%%%%%%%%%%%%%%%%
        blocos=1;
        Screen('DrawTexture', wPtr , imTexture_treino); %Fill the buffer with the first texture
        Screen('Flip', wPtr );
        WaitSecs(2);
                
     ordem=randperm(10);
          
          for imagemNoGo=1:10
              
          if ordem(imagemNoGo)== 1 || ordem(imagemNoGo)==2 || ordem(imagemNoGo)==3 % imagens de tubarão
              Screen('DrawTexture', wPtr , imTexture_tubarao); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            inicio=GetSecs;
            startTime=GetSecs(0);
            [tempo, keyCode]=KbWait([],0,startTime+2.1);
            answer1{blocos+1,imagemNoGo}=KbName(find(keyCode));
            tempo_reacao1{blocos+1,imagemNoGo}=GetSecs-inicio;
            n = GetSecs;
            if n < inicio+2.1
                A = (inicio+2)-n
            WaitSecs(A);
            end
            
            if strcmp(answer1{blocos+1,imagemNoGo},'space')
                Screen('DrawTexture', wPtr , imTexture_fb_negativo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos1{blocos+1,imagemNoGo}='Incorreto';
            else
                Screen('DrawTexture', wPtr , imTexture_fb_tubarao); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos1{blocos+1,imagemNoGo}='Correto';
                
            end
            
            Screen('DrawTexture', wPtr , imTexture_rest); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            WaitSecs(2.285);
              
          else % imagens de peixes
            Screen('DrawTexture', wPtr , imTexture_peixe); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            
            inicio=GetSecs;
            startTime=GetSecs;
            [tempo, keyCode]=KbWait([],0,startTime+2.1);
            answer1{blocos+1,imagemNoGo}=KbName(find(keyCode));
            tempo_reacao1{blocos+1,imagemNoGo}=GetSecs-inicio;
            n = GetSecs;
            if n < inicio+2.1
                A = (inicio+2)-n
            WaitSecs(A);
            end
            
            if strcmp(answer1{blocos+1,imagemNoGo},'space')
                Screen('DrawTexture', wPtr , imTexture_fb_positivo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos1{blocos+1,imagemNoGo}='Correto';
            else
                Screen('DrawTexture', wPtr , imTexture_fb_negativo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos1{blocos+1,imagemNoGo}='Incorreto';
                
            end
            
            Screen('DrawTexture', wPtr , imTexture_rest); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            WaitSecs(1);
            
          end
          end
        
    Screen('DrawTexture', wPtr , imTexture_inblocos); %Fill the buffer with the first texture
    Screen('Flip', wPtr ); %update the display with the buffer content
    WaitSecs(5);
    
    
        %%%%%%%%%%%%%%%% EXPERIMENTO %%%%%%%%%%%%%%%
    

        blocos=1;
        
            acertos=cell(1,7); % grava as posições de acertos e erros
            answer=cell(1,7); % cada linha é um bloco e cada coluna é uma imagem
            tempo_reacao=cell(1,7); % grava o tempo de reação
             
            
        while blocos<=5
          
          for imagemGo=1:7
              
            Screen('DrawTexture', wPtr , imTexture_peixe); %Fill the buffer with the first texture
            Screen('Flip', wPtr );

            inicio=GetSecs;
            startTime=GetSecs(0);
            %delta=2;
            [tempo,keyCode]=KbWait([],0,startTime+2);
            %[keyIsDown,secs, keyCode] = KbCheck([]);
            answer{blocos,imagemGo}=KbName(find(keyCode));
            tempo_reacao{blocos,imagemGo}=GetSecs-inicio;
            n = GetSecs;
            if n < inicio+2.1
                A = (inicio+2)-n
            WaitSecs(A);
            end
           
            if strcmp(answer{blocos,imagemGo},'space')
                Screen('DrawTexture', wPtr , imTexture_fb_positivo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos{blocos,imagemGo}='Correto';
            else
                Screen('DrawTexture', wPtr , imTexture_fb_negativo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos{blocos,imagemGo}='Incorreto';
                
            end
            Screen('DrawTexture', wPtr , imTexture_rest); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            WaitSecs(2.285);
            
          end
          
          
          rept=1;
while rept<=2
    cont = 1;
while cont<= 34
        Screen('DrawTexture', wPtr , imTexture_slide{1,cont}); %Fill the buffer with the first texture
        Screen('Flip', wPtr );
        WaitSecs(0.2205);
        cont = cont+1;
end
rept = rept+1;
end
           %resting15();
           %Screen('DrawTexture', wPtr , imTexture_intervalo); %Fill the buffer with the first texture
           %Screen('Flip', wPtr );
           %WaitSecs(5);
                 
               
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
          ordem=randperm(10);
          
          for imagemNoGo=1:10
              
          if ordem(imagemNoGo)== 1 || ordem(imagemNoGo)==2 || ordem(imagemNoGo)==3 % imagens de tubarão
              Screen('DrawTexture', wPtr , imTexture_tubarao); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            inicio=GetSecs;
            startTime=GetSecs(0);
            [tempo, keyCode]=KbWait([],0,startTime+2.1);
            answer{blocos+1,imagemNoGo}=KbName(find(keyCode));
            tempo_reacao{blocos+1,imagemNoGo}=GetSecs-inicio;
            n = GetSecs;
            if n < inicio+2.1
                A = (inicio+2)-n
            WaitSecs(A);
            end
            
            if strcmp(answer{blocos+1,imagemNoGo},'space')
                Screen('DrawTexture', wPtr , imTexture_fb_negativo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos{blocos+1,imagemNoGo}='Incorreto';
            else
                Screen('DrawTexture', wPtr , imTexture_fb_tubarao); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos{blocos+1,imagemNoGo}='Correto';
                
            end
            
            Screen('DrawTexture', wPtr , imTexture_rest); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            WaitSecs(2.285);
              
          else % imagens de peixes
            Screen('DrawTexture', wPtr , imTexture_peixe); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            
            inicio=GetSecs;
            startTime=GetSecs;
            [tempo, keyCode]=KbWait([],0,startTime+2.1);
            answer{blocos+1,imagemNoGo}=KbName(find(keyCode));
            tempo_reacao{blocos+1,imagemNoGo}=GetSecs-inicio;
            n = GetSecs;
            if n < inicio+2.1
                A = (inicio+2)-n
            WaitSecs(A);
            end
            
            if strcmp(answer{blocos+1,imagemNoGo},'space')
                Screen('DrawTexture', wPtr , imTexture_fb_positivo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos{blocos+1,imagemNoGo}='Correto';
            else
                Screen('DrawTexture', wPtr , imTexture_fb_negativo); %Fill the buffer with the first texture
                Screen('Flip', wPtr );
                WaitSecs(1);
                acertos{blocos+1,imagemNoGo}='Incorreto';
                
            end
            
            Screen('DrawTexture', wPtr , imTexture_rest); %Fill the buffer with the first texture
            Screen('Flip', wPtr );
            WaitSecs(1);
            
          end
          end

          rept=1;
while rept<=2
    cont = 1;
while cont<= 34
        Screen('DrawTexture', wPtr , imTexture_slide{1,cont}); %Fill the buffer with the first texture
        Screen('Flip', wPtr );
        WaitSecs(0.2205);
        cont = cont+1;
end
rept = rept+1;
end
          %resting15();
          %Screen('DrawTexture', wPtr , imTexture_intervalo); %Fill the buffer with the first texture
          %Screen('Flip', wPtr );
          %WaitSecs(5);
          
            blocos=blocos+2;
   
        end
        clearvars -except tempo_reacao acertos answer nome
        NomeArquivo=strcat(nome,'.xls');
        xlswrite(NomeArquivo,acertos, 'Acertos');
        xlswrite(NomeArquivo,tempo_reacao, 'Tempo_Reacao');
        xlswrite(NomeArquivo,answer, 'Respostas');         
        
        Screen('CloseAll'); %close the window
catch ERR
    Screen('CloseAll');
    rethrow(ERR);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%