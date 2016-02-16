X-GM-THRID: 6251854821494620160
X-Received: by 10.112.130.42 with SMTP id ob10mr2489368lbb.2.1455623881912;
        Tue, 16 Feb 2016 03:58:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.144.77 with SMTP id s74ls811872lfd.91.gmail; Tue, 16 Feb
 2016 03:58:01 -0800 (PST)
X-Received: by 10.112.137.102 with SMTP id qh6mr2529684lbb.9.1455623881264;
        Tue, 16 Feb 2016 03:58:01 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id e130si753663wme.2.2016.02.16.03.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 03:58:01 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MV2eD-1aUNk51sRZ-00YUch; Tue, 16 Feb
 2016 12:58:00 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: obd_mount: Declare function as static
Date: Tue, 16 Feb 2016 12:57:59 +0100
Message-ID: <2821295.SDV1qGbQcd@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160216114934.GA15426@amitoj-Inspiron-3542>
References: <20160216114934.GA15426@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:9ZBv8VwnkPqr1RGwFby2dnFyo8B7SBdA9YcvumGRAlgdMBqvzzp
 REGGtmsJohvKnHHXQBCsjpQ0yxohFB61lt23BJ6o2PnkNREoeZsiW+peLscBg6LcFi/i33Q
 bcLJ/BTTzKC4kw8QKXY5vCP8ig2a7Wwb6PHkK0VHxNDUSkqf3A2NWvYOeZooI1kkCvH9oHm
 tuDYifiybsWN2lI16cnkw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ZUyLK/KvwiY=:WEJu8udJI+pnKGXbJsPr69
 Dti7dTUb8LYqaYfEC2Wru4qbxb2QyB3yEIYCTzxpMrsN9dPDWzR0p87qMWzf1t0l32ApYp4H6
 B/2VvmMYccNZPMFc1PzY1r1SLupZbN73vJJFjIQqkE2A7M4R65YavAoIGkY2YxfJYQM9Aqkff
 xHRa9tJBQNpZTfwEFA9NBnb/tzN2nu4VfiFncQ71zRQqhHx2NE36f1iDEXu+A9g81S5o95MbG
 cgt6FlMy1+FNticfRGZnt1Q+pTinxnkY4rnLvpSvY0gcYBp9UB5GBtLV93q0J/VA8w1rS2o3j
 zf/zs+k/rdu0JkIvTdNXbh39vHufUGRvutA20q6oOiZAc7djDUv7RX9ZAweiNy8p21zEpM198
 jWE2JOIUtt8ZEz0NN0FEW86TjS+JcCX4QdxvBebwU6ZkJTIwUhIH59QltsSw7MV1RfF76DgBo
 5g+TDkkotzJshe/P7woyaMB7iNKfSGIe/NOh3DH6kH0MDSXIaQMfA0InwXCXVlMggijRcb9to
 so5/AiFukRFHPY971Il2puJZMIW+BHrVKqDEuEm9cfoe7rSEn6vV7LzLKnU2/akZf0hODNEZ7
 fuDd8qPHdt3zdpc5ilEPsvsNG4A7ohBPCsTxhC7HowE48OfiNS6gW9ekt/U1/ppOm1NlO1GOZ
 5JKYiErLzv3pI3NltZh9QfM1XAf9EWQ+Za44oSK3/bcQrNPjWgw7LR/KLninOA5Gm33/6vyOv
 +Obdi2z5g4/F8/p9

On Tuesday 16 February 2016 17:19:35 Amitoj Kaur Chawla wrote:
> Declare lustre_mount() function static since it is defined and called in this
> file only.
> 
> This fixes the following sparse warning:
> drivers/staging/lustre/lustre/obdclass/obd_mount.c:1169:15: warning:
> symbol 'lustre_mount' was not declared. Should it be static?
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

