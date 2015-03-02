X-GM-THRID: 5601444757504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,932907dd82fbc09d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.172.4 with SMTP id nw4mr25413436icc.3.1425258040808;
        Sun, 01 Mar 2015 17:00:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.85 with SMTP id m79ls1502323qgd.44.gmail; Sun, 01 Mar
 2015 17:00:40 -0800 (PST)
X-Received: by 10.236.36.39 with SMTP id v27mr24430770yha.24.1425258040653;
        Sun, 01 Mar 2015 17:00:40 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si1333392pdc.0.2015.03.01.17.00.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 17:00:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 599CF4D3;
	Mon,  2 Mar 2015 01:00:40 +0000 (UTC)
Date: Sun, 1 Mar 2015 17:00:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Move {
 up one line.
Message-ID: <20150302010040.GB21527@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425245697-11270-1-git-send-email-haticeerturk27@gmail.com>
 <1425246218-11692-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 11:43:38PM +0200, Hatice ERT�RK wrote:
> That open brace { should be on the previous line.
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

two emails with identical subject lines, yet doing different things :(

