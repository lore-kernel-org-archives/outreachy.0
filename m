X-GM-THRID: 6250414560297091072
X-Received: by 10.129.88.135 with SMTP id m129mr1859062ywb.47.1455291324221;
        Fri, 12 Feb 2016 07:35:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.3 with SMTP id e3ls897137ioe.5.gmail; Fri, 12 Feb 2016
 07:35:23 -0800 (PST)
X-Received: by 10.66.102.8 with SMTP id fk8mr1947283pab.44.1455291323800;
        Fri, 12 Feb 2016 07:35:23 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x242.google.com (mail-qg0-x242.google.com. [2607:f8b0:400d:c04::242])
        by gmr-mx.google.com with ESMTPS id g136si1099579ywb.5.2016.02.12.07.35.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:35:23 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) client-ip=2607:f8b0:400d:c04::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x242.google.com with SMTP id b35so5698508qge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 07:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lDNiOR+SOWtXbnjgIWgYueQZ/168t9O/NzD3Le7R0Gk=;
        b=Evx4xTDyMHqQWVx4KSHCACIj9dZR7HzI1qDqNlQQSl3H48xzpMraLm1Hg13bBoTKq2
         E0ElWDjxMSI0H0vQWleuWoyTf35V/QieCdbPny2iB9No5FkS/ydrVhN+Jdr3targkbiJ
         w0RVZWlB5HgG/T+LPIcltIWU3tcevCjs2PQliqp+wJMoJMEXAgAvxKEi6cQU8PbN+ZDm
         QNlB04Be2iX22CrcovvVjhkbKs/5WYoowMO/jbzmVlYLzal4aV/9coe1z+KQtoRpowyI
         /9lmry6CuEkgqDlJZNWPopD78aWuEATP0NjaJubcr3zZ39zPbOV0kZPzzMiq6X7hl6ag
         CCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=lDNiOR+SOWtXbnjgIWgYueQZ/168t9O/NzD3Le7R0Gk=;
        b=e5C48hfic3RKkZGBCVfYPQJ7teKMXj6FNd5lgFKoFBrco2OgRpENBzhKIVMrnsUz/6
         XR9gVbk3i7sIv10Sy+71b+jH3cYg5JfYmn3drJgG6MrNMymw+XUNdMyqBBsMmcL/8RAY
         AjAJlsBCFm5tWM0Bjfk+PHDuama6da/XPenaI1pFoR50yd8fVYznus6K5MgrAdR2r+bV
         2Hki1utKS6FpYyxpkHlMZZ5bBzZA/PR1xQ/VU4ZW7Z9J9Rhn4DoOWRYIyjokS7HZR7u1
         XCkrjqofKaqsBnod0HreNkk+vrqtZDugJCtlWutG/DRpOifGUuNr3oW0vxHc5WXLpcRp
         I4aQ==
X-Gm-Message-State: AG10YORRBuijzfa4a1Nt+junWXjqXRfu6bH1vtF2ap72brNQFXd8OHNyeSF8/ZSJ8GOdvMfN0tuqD3soEPZE6Q==
MIME-Version: 1.0
X-Received: by 10.140.140.6 with SMTP id 6mr2754326qhm.29.1455291323606; Fri,
 12 Feb 2016 07:35:23 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Fri, 12 Feb 2016 07:35:23 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602121547280.2510@hadrien>
References: <20160212144041.GA1328@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602121547280.2510@hadrien>
Date: Fri, 12 Feb 2016 21:05:23 +0530
Message-ID: <CA+5yK5EDZjdokuq0+h+2t3+zKbTgjc+xrnXs=2FWz2XhObYSYQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: rtl8192u: r8192U_dm:
 Replace MSECS with msecs_to_jiffies
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 8:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> -                     priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);
>> +                     priv->fsync_timer.expires = jiffies +
>> +                             msecs_to_jiffies(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);
>
> You're no worse than before, but maybe there could be some way not to
> exceed the 80 character limit quite so much.  Maybe some subcomputation
> that could get a meaningful name.
>
> julia

Yes, most of the changes are exceeding the 80 characters limit.
To do a subcomputation would be helpful but wouldn't that be a
separate patch altogether?

Amitoj

