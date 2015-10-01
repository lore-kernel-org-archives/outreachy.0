X-GM-THRID: 6200671081613754368
X-Received: by 10.112.138.170 with SMTP id qr10mr1451072lbb.4.1443706777198;
        Thu, 01 Oct 2015 06:39:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.4 with SMTP id lg4ls98076lab.75.gmail; Thu, 01 Oct
 2015 06:39:36 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr1406786lbc.23.1443706776606;
        Thu, 01 Oct 2015 06:39:36 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id k7si102726wif.1.2015.10.01.06.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 06:39:36 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MTtPJ-1a7non0vdB-00Qjnl; Thu, 01 Oct
 2015 15:39:36 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: ptlrpc: Declare functions as static
Date: Thu, 01 Oct 2015 15:39:35 +0200
Message-ID: <2438403.Nzdtl2GjMo@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443706228-18751-1-git-send-email-shraddha.6596@gmail.com>
References: <1443706228-18751-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:pTE6h9IruPFlawsIoUfOZQNmLto0RSg93ih6lJLE/zDv7O170vf
 4A35UJZwTq0GXb9QLZSv9TMdYsMRDytkaTx3VFIorEbY5qxv9dzBo5k/Rzjzx7pOK09T1/d
 glH3HVPgpGRXOG7nZnchXd7xUgJ6ZV1YPh6SSSKK3HKD00PZkKplS9P+CXd1v7VRXzebFfs
 goVP0ob4/gaqwT9Q0q3lg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Q3MZpTbXa+M=:1hfUlfoUuMA3GKTrF86Q0e
 xeOMtvB4MdqHo4TkhSCCaoAFIpulw1/JuRH4eaiCHwKrrjIKpC9b18rl9zyKMlJydD2La7m7g
 RIPRi49YLcRtbSbqawvRcFzj/36ujnwtnKgwWS7LBCPC4xgKur5htiiGvS+rrUGPY4R/Cn9Cm
 qsRAzyYYGe4ifOjfy19Hj7aFMpDAHCNUZNtPW0ZYEmmUoKeZuW2lXP/qxhtrX/AmJsAVCrSbe
 HjU3WtrF6TwrzU8ZFciXV6xkLINeIFXj0J1WEgbMjRYgQwa/g2waUNpbNBtM2WlCLNlYNWou5
 4lp7UA44RhtRn/fIMI8nkcQwvPHr8WENow5g1fNdoGKxRZnfvp+Az8JiNhhiRj2ATH94/24ob
 IXS5mjplC4xeJp4UBL6Pq+pQ8CvY4MhGhkOz37PwYazt/h72z0PzOLp3tJq3eYC9amus6GvSE
 CFLgcKVAgyKsPDNEwuwO9q57EO0/HppClxnx+G2F5105RXcvPgq5B5eJfKkXMj70pcbgBJQ0t
 aiju9NCFjHz2uR9Sy7laIdpU761EQN4V/b5kGy6Z+ardkhE+HVaCvZAuZAldStYMGMpKpV+Up
 Y5yy6OemR2RmfcVryGhnLACdKK09eFgzdPtth0sskNG2N9tVcN66HqJTzpsHCjDlTVuSX+jlS
 NZ1lsXeyn+Pq6RDQOq1W44GlmyqxywCt453MWoaPGpy7SMKfXPnVBDNHjGrj4S+OioHc4tYAY
 jR/VIgFGy5QGauBV

On Thursday 01 October 2015 19:00:28 Shraddha Barke wrote:
> Declare function as static since it is accessed from this
> particular file only. Also remove it's declaration from
> header file
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

The patch looks good to me, but the subject line should be more specific.
There are other functions that need to be changed the same way,
and we want each subject line to be unique.

	Arnd

