#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

void scanarry(double **v,int n);
int Gauss(double **v,double *solution,int n);

void main()                                               /*�����������������������������Լ�Ϊ��������ڴ�ռ�*/
{   

	clock_t start,finish;
	int i,n,count;
	double *m,**p,dauration;
	printf("���������Է������δ֪���ĸ���:");        
	scanf("%d",&n);                                       /*�����û���������Է�����Ľ������Դ���������η����ڴ�ռ�*/
	
	p=(double **)malloc(n*sizeof(double *));              /*malloc�������ڴ�����̬��ά����*/
	for(i=0;i<n;i++)
		p[i]=(double *)malloc((n+1)*sizeof(double));      /*����һ��n��n+1�е������������*/
	scanarry(p,n);                                        /*����scanarry������Ϊ��ά����¼���û�������*/
	
	m=(double *)malloc(n*sizeof(double));                 /*����malloc����������̬�����Ա�����*/
	
	start=clock();
	count=Gauss(p,m,n);                                   /*����Gauss�������㷽�̵Ľ��ֵ,����ֵΪ1˵��ϵ����������*/
    finish=clock();
    
	if(count!=0)
		printf("\nϵ����������\n");
	else
	{
	  printf("\n���Է�����Ľ�Ϊ:\n");
	   for(i=0;i<n;i++)
	   {
           printf("x(%d)=%lf\n",i,*(m+i));
	   }
	
	}
	dauration=(double)(finish-start);
    printf("\n����ʱ�䣨���룩:%lf",dauration);
	system("pause");                 

}

void scanarry(double **v,int n)                            /*scanarry���������Ǵ��û������������ʽ��ֵ*/
{   
	printf("���������Է�������������Ԫ�أ�����һ�к��밴�س�,ÿ��Ԫ�ؼ��һ��:\n");

	int i,j;
	for(i=0;i<n;i++)
		for(j=0;j<n+1;j++)
			scanf("%lf",&v[i][j]);

}


int Gauss(double **v,double *solution,int n)               /*Gauss����Ϊ���Է�������㺯��*/
{    
	int i,j,k,flag=0,p=0;
	double m,s,temp,d;
  for(k=0;k<n&&flag!=1;k++)                                /* k���������ڼ�¼��ǰ�ڴ����������ڼ������Խ���Ԫ��*/
  {    p=k;
	   d=0;
       for(j=k;j<n;j++)
	   {   
		   d=d+(*(*(v+k)+j));
	   }
        if(d==0)
		{
	       flag=1;                                       /*���־������죨�����г���һ��ȫΪ�㣩���Ժ��ٽ����б任��*/
		}
		   

		temp=fabs((*(*(v+k)+k)));   
		for(i=k+1;i<n&&flag!=1;i++)                       /*����ѭ��ѡ������Ԫ��*/
		{           
 		     if(fabs( (*(*(v+i)+k)) )>temp)
			 {
		         p=i;
			     temp=fabs((*(*(v+i)+k)));
			 }
					   
		}

        if(temp==0)                                        /*���־������죨�Խ�������Ԫ�أ�*/
			flag=1;
		else if(p<n&&p!=k)
		 for(j=k;j<n+1;j++)                                /*�Ծ�����г����б仯*/
		 {
            s=(*(*(v+k)+j));
		    (*(*(v+k)+j))=(*(*(v+p)+j));
            (*(*(v+p)+j))=s;
		 }
					   
      
		for(i=k+1;i<n&&flag!=1;i++)                       /*�Ե�i�н��в�������Ԫ,����i�ĳ�ʼֵΪk+1����ֵֹΪ����ʽ����*/
		{
			m=*(*(v+i)+k)/(*(*(v+k)+k));                  /*mΪ��˹��Ԫ���еĳ���*/
			for(j=k;j<n+1&&flag!=1;j++)
			{
				*(*(v+i)+j)=*(*(v+i)+j)-m*(*(*(v+k)+j));  /*��i���е�j��Ԫ�ؽ������㣬j��ʼֵΪk����ֵֹΪ����ʽ����*/
			}
		}

  }
	

        printf("������Ԫ�����󱻻�Ϊ:\n");
        for(i=0;i<n;i++)
		{	  
		     for(j=0;j<n+1;j++)
			 printf("%lf ",v[i][j]);
		     printf("\n");
		}






/*�ش����̣�������Ԫ��*/
   if(flag==0)
   {
  
	   for(k=n-1;k>=0;k--)             
	   {  
	   
	      for(i=k-1;i>=0;i--)       
		  {
			  m=*(*(v+i)+k)/(*(*(v+k)+k));      
			  for(j=n;j>=0;j--)
			  {
				*(*(v+i)+j)=*(*(v+i)+j)-m*(*(*(v+k)+j));  
			  }
		  
		  }
	   }
		  
    
	   


          printf("������Ԫ�����󱻻�Ϊ:\n");
          for(i=0;i<n;i++)
		  {	  
		      for(j=0;j<n+1;j++)
			   printf("%lf ",v[i][j]);
		       printf("\n");
		  }




	      for(k=n-1;k>=0;k--)                 /*��λ��*/
		  {    
				*(*(v+k)+n)=*(*(v+k)+n)/(*(*(v+k)+k));
                *(*(v+k)+k)=1;
		  }                             
	   



      printf("��λ���󣬾��󱻻�Ϊ:\n");
      for(i=0;i<n;i++)
	  {	  
		   for(j=0;j<n+1;j++)
			 printf("%lf ",v[i][j]);
		     printf("\n");
	  }


   }

        
/*����������*/


   for(k=0;k<n;k++)                
   {
	   *(solution+k)=*(*(v+k)+n);

   }                 

			return flag;

}

