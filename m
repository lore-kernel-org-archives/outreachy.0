X-GM-THRID: 6201108859850850304
X-Received: by 10.180.160.146 with SMTP id xk18mr180857wib.3.1443818824301;
        Fri, 02 Oct 2015 13:47:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.210 with SMTP id 79ls289707lfq.12.gmail; Fri, 02 Oct
 2015 13:47:03 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr3050078lbb.16.1443818823835;
        Fri, 02 Oct 2015 13:47:03 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id xl3si121697wib.1.2015.10.02.13.47.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:47:03 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MXp03-1aBRvk1yEh-00WpYG; Fri, 02 Oct
 2015 22:47:03 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] Staging: lustre: obdclass: class_obd: Declare as static
Date: Fri, 02 Oct 2015 22:47:03 +0200
Message-ID: <25064201.Qn93OMgmEY@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443808154-13944-6-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com> <1443808154-13944-6-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:jK+pVm4A8ek0jX8AajYSmC76+akTxmIwf/Kzglm61xrGSSjZ2UE
 ifHF7b1+0Sy9UdSkTYX9oVZBszmwpHfVTlrbM4ETUglx72HfFr+f9tJB4+1drKs2A4+/I12
 csLAvTABOgAaATO//k0ZNEwgiT0HFbEgx4RAZLqMYYTyc5OA8J/FjsZOOwWJlSnPR6aCCFH
 gzhmpWz6rXXcgt83YDlPw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ORmkrS13SG0=:J8EXMCSLFn2vqyIGlOrl/U
 ZxPI10ZGKaqSLKCjwRrNIO7F2PILB7H2/gcQ6MqCB3JosSOOTOjXQXVzu47DK1CEuDXxIFUrS
 htkn7ccYztvhaC2i8Y9sUnr/m6YzLA8G46tZFpzqR3S/JK5i71LEHSubym9Y7Y7ebicBIq/El
 YgkNVFiOTMLSG1WAA9vHns4i2lLASEzIFkyH2kGLQVxa9cBuozLaaLStu0OGuJV54taWwgKq9
 nRHxfc/lu0depBX6DkY4pMSzd6q+SbSMB5hNJE0CDf/tBOnvtIgb9g5mZ2AkDwikQaJY7OMS0
 5oCRXRGrysLv5IprzN8JUYkeQ54MYjzeV+RH3ytqOT3rI9DuSN0tVD6aAYqDaa2hslyk+WdDm
 F7LfpskRhpVa3BMr4BRydUOqeaPiC2Cqzdt+DvqNZVS4ILFxUwir1USlLdwHCqRxmWm7k8Phk
 kWvLFSx36XCjtheG9tIt7Mlb2prcoksXYVZV/HM0oZ2trqHjVMWSjBY+UL3eVyCwRMWYoJdCd
 B//QopUi5BdQCm5PctyhuiUMVd9MRDUEecNaTKLf7D+6n7yT/uqFp6JIZwOW5zdUUJ92NM5AO
 KPDA9Kkjrj/H4mIIjLLqEkfO5doR7dQYAnkySknuvQr5ClN3wCWhgi+HL9PXYqh08wYxFIR9G
 nBIItX/A5D8TgKAvqpPf7z8t2E1JsVr1HLAbgWZcsuiRcfCGkBp+qwBWcpHVxWGtz+zeWEZbE
 OUKaeei+Mzi3unvt

On Friday 02 October 2015 23:19:14 Shraddha Barke wrote:
> Declare class_resolve_dev_name as static it is not used anywhere
> apart from this particular file.Also remove the declaration
> from header file
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

