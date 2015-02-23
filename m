X-GM-THRID: 1441778368512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f560d6fb9b203e1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.214.234 with SMTP id od10mr1644456lbc.3.1424727946390;
        Mon, 23 Feb 2015 13:45:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.71 with SMTP id r7ls512556lag.42.gmail; Mon, 23 Feb
 2015 13:45:46 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr1644452lbc.3.1424727946049;
        Mon, 23 Feb 2015 13:45:46 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id ta1si785947wic.1.2015.02.23.13.45.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 13:45:46 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MLC0j-1YPjho25CL-000MRB; Mon, 23 Feb
 2015 22:45:45 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove typedefs
Date: Mon, 23 Feb 2015 22:45:45 +0100
Message-ID: <6929426.tL312YngjT@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424603276-26391-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424603276-26391-1-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:nvEEn5tGUbnIcDBWMtJUyFojNRQ3Yp/96XqyaTP+eQxhSOKV+no
 ntjAiI05xFj1FSURGoODYiMjk8VonDvHN/0REXsr3uCCk6BGTMFjRVDwBaNG+gCim0cTviG
 F3T6+fVQfkooLVyDsChWaVPgfQnxB76qkjibuVVXcGyixowqWEW/P1Lu2R1GQvGFtJH8J3I
 +upko0cUvBl4aoKOicrOQ==
X-UI-Out-Filterresults: notjunk:1;

On Sunday 22 February 2015 13:07:56 Melike Yurtoglu wrote:
> 
>  /* long integer with size equal to pointer */
> -typedef unsigned long ulong_ptr_t;
> -typedef long long_ptr_t;
> +unsigned long ulong_ptr_t;
> +long long_ptr_t;
>  
> 

Sorry, but this makes no sense. You have replaced the typedefs with
unused global variables, and you have not noticed that the types
are still actually being used.

	Arnd

