X-GM-THRID: 6208452343363534848
X-Received: by 10.50.79.201 with SMTP id l9mr30999706igx.13.1445518060231;
        Thu, 22 Oct 2015 05:47:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.225 with SMTP id z1ls840909igl.18.gmail; Thu, 22 Oct
 2015 05:47:39 -0700 (PDT)
X-Received: by 10.66.122.201 with SMTP id lu9mr11942989pab.8.1445518059922;
        Thu, 22 Oct 2015 05:47:39 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id m124si855575ywb.7.2015.10.22.05.47.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:47:39 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MaU9p-1a4qJi39oX-00K9N7; Thu, 22 Oct
 2015 14:47:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com, linux-ide@vger.kernel.org, davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Y2038] [PATCH v2] ide: pdc202xx_new: Replace timeval with ktime_t
Date: Thu, 22 Oct 2015 14:47:23 +0200
Message-ID: <4909398.MrlE5Sy5gL@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151022124550.GA18694@amitoj-Inspiron-3542>
References: <20151022124550.GA18694@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:pWW/nnYVzutDe5R5KquN4HVrEJMtS6TD/DXJNrPd7zhMO68W8hX
 qRdvTrqJCjIBQ8ff72vzw0oDUZE4j+NU5SeDz/FrMPrfXMeXxcPTrdrRRtTsHRq4IUNkm+g
 5tFdj6AW9e8kv1/KInuWau6IYIuV9h1FOp6UZwQ7zsoSSwt5KW0MgSyvU+rFKQb0TjVX+Ir
 tsHpgt3ZFdNZ2sQvXLoYg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:WqRjaVX/yLk=:LJh3A8wbxK6c2BhydZi8Wf
 0osHzKWU2GHa8KHg/l3EEuSAuLHnCut87mlyWV+5X06NLOLHH8qQ/j+ZTmz+hJVBU6KkeDl4j
 ajK/ENkj7cpg/SWR3VcXteMYODzCDEb/lADNsw/6IbdwbnL5y6j9oYpVqr4UEQQJhpNKqLxGE
 cCsC+yjNbcqs58zWo4/44CdC7CUmhbKCAyBE5cLG1SZVhwDz4NlAHZcqt6oa69GsAZhLkEL4J
 3Rok2bjGuPqkP/TrKl7tGaYz5/cCH/erTjW9brKfPo0JaYFRttiJa0jEwzK6gdQM4daJnIeLc
 NnU/auAAX8RkToLVZylSm8FCQbM0KX5I9v2oxE3IAF4ylJEMcSt0CjprUw0ic8eMePAp02Axu
 J9JDYlyrM34eVAnzO6CtTKIiyOYAZ4ooVPPTGmXUA5tD9RQtsVv+nlTQCcVK8dTuAR0O3BI2d
 zGblMixxoNcsGuUO2Kgfgk2IITF62MSeWZdmg3BpXrr6GC/MdcQPI5fuGqGC/QGmEr6qAfxt5
 N1ulGtln9WbCyjIbeOZmv7oJC1z0dIYq7AR0fC+LHN48Y6ojVN36Er0dDUTiWC9n1uN0NZ2lH
 nZfPV2ErpG/Z8Jpw92xd9OusvUdilTWmtPB5hbZ+lD/dHoh4ijUgXKgV+VpaNa9nFnlcNX3mj
 dMxDc1plCFYsdivi9cqFj+okfEN45EtGloHEM/BrkkyZ2NOiKyDMEMn/8Gr51PZbjCYQ53zy2
 sBVEDYAp98heM0B8

On Thursday 22 October 2015 18:15:50 Amitoj Kaur Chawla wrote:
> This driver uses 'struct timeval' which we are trying to remove since
> 32 bit time types will break in the year 2038 by replacing it with
> ktime_t.
> 
> This patch changes do_gettimeofday() to ktime_get() because
> ktime_get() returns a ktime_t while do_gettimeofday() returns struct
> timeval.
> 
> This patch also uses ktime_us_delta() to get the elapsed time.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

