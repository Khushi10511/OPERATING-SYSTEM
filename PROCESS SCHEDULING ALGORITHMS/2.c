// FCFS with arrival time
#include <stdio.h>
int main()
{
    int n, i;
    //Entering the no of processes
    printf("Enter the no of processes you want to enter :");
    scanf("%d", &n);
    int p[n], bt[n], at[n], t[n], wt[n], tat[n];
    printf("\n");
    //entering the burst time and arrival time for each process
    printf("Enter the processes in order of their arrival\n");
    for (i = 0; i < n; i++)
    {
        p[i] = i + 1;
        printf("Enter the arrival time for Process %d :", i + 1);
        scanf("%d", &at[i]);
        printf("Enter the burst time for Process %d :", i + 1);
        scanf("%d", &bt[i]);
        printf("\n");
            }

    t[0] = 0;
    wt[0] = 0;

    // calculating waiting time
    for ( i = 1; i < n; i++)
    {
        // Add burst time of previous processes
        t[i] = t[i - 1] + bt[i - 1];

        // Find waiting time for current process = sum - at[i]
        wt[i] = t[i] - at[i];

        // If waiting time for a process is in negative that means it is already in the ready queue before CPU becomes idle so its waiting time is 0
        if (wt[i] < 0)
            wt[i] = 0;
    }

    // Calculating turnaround time by adding bt[i] + wt[i]
    for (int i = 0; i < n; i++)
        tat[i] = bt[i] + wt[i];

    // Display processes along with all details
    printf("\nProcesses \t\t Burst Time \t\t Arrival Time \t\t Waiting Time \t\t Turn-Around Time \tCompletion Time \n");
    int total_wt = 0, total_tat = 0;
    for (int i = 0; i < n; i++)
    {
        total_wt = total_wt + wt[i];
        total_tat = total_tat + tat[i];
        int ct = tat[i] + at[i];
        printf("\n%d \t\t\t %d \t\t\t %d \t\t\t %d \t\t\t %d \t\t\t %d ", i + 1, bt[i], at[i], wt[i], tat[i], ct);
    }
    float avwt = total_wt / n;
    float avtat = total_tat / n;

    printf("\nAverage waiting time = %.2f", avwt);
    printf("\nAverage turn around time =%.2f ", avtat);
}
