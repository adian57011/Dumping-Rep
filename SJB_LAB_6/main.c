#include<stdio.h>     //includes input output related function such as scanf() and printf()
#include<conio.h>   //performs input,output on the console
#include<string.h>    //declares set of functions to work strings. such as strcpy()
void main()
{
int et[20],at[10],n,i,j,temp,st[10],ft[10],wt[10],ta[10]; // et = execution time , at = arrival time, n = number of process, i & j = iteration, temp = for swaping varibles, st = schedule time,ft = full time, wt = waiting time, ta = turn around time
int totwt=0,totta=0;       //total waiting time  & total turnaround time
float awt,ata;  // average waiting time & average turn around time
char pn[10][10],t[10];
//clrscr();

// declaring how many process we need
printf("Enter the number of process:");
scanf("%d",&n);
//entering details of the processes including its arrival time, execution time  and its name
for(i=0;i<n;i++)
{
printf("Enter process name, arrival time & execution time:");
//flushall();
scanf("%s%d%d",pn[i],&at[i],&et[i]);
}

//a for loop for swaping varibles
for(i=0;i<n;i++)
for(j=0;j<n;j++)
{
if(et[i]<et[j])
{
temp=at[i]; // if executing time is less than the other executing time we swap the variables to bring it up front
at[i]=at[j]; // swaping arrival time if needed
at[j]=temp;
temp=et[i];
et[i]=et[j];    // swapping execution time
et[j]=temp;
strcpy(t,pn[i]);    // swapping process names
strcpy(pn[i],pn[j]);
strcpy(pn[j],t);
}
}
for(i=0;i<n;i++)
{
if(i==0)
st[i]=at[i]; // if this is the first process service time is its arrival time
else
st[i]=ft[i-1]; // if this is anyother than the 1st process service time will be the finish time of the previous task
wt[i]=st[i]-at[i]; // waiting time calculation
ft[i]=st[i]+et[i]; // finish time calculation
ta[i]=ft[i]-at[i]; // turnaround time calculation
totwt+=wt[i]; // total waiting time calculation
totta+=ta[i]; // total turn around time calculation
}
awt=(float)totwt/n; // average waiting time
ata=(float)totta/n; // average turnaround time
printf("\nPname\tarrivaltime\texecutiontime\twaitingtime\ttatime");
for(i=0;i<n;i++)
printf("\n%s\t%5d\t\t%5d\t\t%5d\t\t%5d",pn[i],at[i],et[i],wt[i],ta[i]);
printf("\nAverage waiting time is:%f",awt);
printf("\nAverage turnaroundtime is:%f",ata);
getch();
}
