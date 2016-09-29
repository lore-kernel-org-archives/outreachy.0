X-GM-THRID: 6335831546958708736
X-Received: by 10.66.43.36 with SMTP id t4mr878790pal.115.1475176181892;
        Thu, 29 Sep 2016 12:09:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls3984808otd.46.gmail; Thu, 29 Sep
 2016 12:09:41 -0700 (PDT)
X-Received: by 10.200.36.41 with SMTP id c38mr893512qtc.21.1475176181452;
        Thu, 29 Sep 2016 12:09:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id a3si1157525paw.1.2016.09.29.12.09.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:09:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so3115213paz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 12:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=p9uDrnC8WQVnbBMztXMI8/PZDh8M2CSxR75SwnAjWks=;
        b=NjJK3kFssifS4L5/NjWq+J7HsHDIn+A3dex5lLnlpSIscIEh9GVaYPcYw+L5HpflnF
         8P0/DM+rXYcoI7XF2kF5ZY1GTCJJhSafKRMrP8rWDC7c/UTe872cPjGxss3ekPBmgJOr
         VyM+YyAZdq9Aty20AI572Qx/9CZWm2Joj0vfZ5jB/smcdswLKyQjVIA0Olv7bBCROV3Z
         PIbL8z3BaxhdwfJUh+7YS4ZamC/4ZxK1WCkrp4E5SA80zBfKuVNpCSnDqXwEZRDvm8eD
         J9hvrwYXIAIBSxxAFQ4Q2zlG0bD7jPP1qGIFlHDoNKIjxFKiZOjj9yWjLpEw3D5qifLX
         YsEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=p9uDrnC8WQVnbBMztXMI8/PZDh8M2CSxR75SwnAjWks=;
        b=L9SBOVQRo/undKbYwt6903tPANwrNuRTd473tD+57IhzsfbB/ghZm0xVR9UCmvAcTz
         ElXfJK7BTsyRQtIXS/SbP73efFbAyAuyvYpgMQl8zoqC1XgAUARqSObbNqQW45T1XMrK
         +Doa9V+xJ9qadAYu1eMpBX4/epn2RaMy2BXPCRmI1NLtZlArzbAE+AFq1O/Dbjm685S0
         Cz7ZEDtRjws51/nNsmvEvFL2K7UrK0euUI3L3Bh9fJOsJI/WOI3S0RSG0lBBuhXX6m/P
         LGV20nYE6uUlWR346vB6q3SiQnfa+XLAXACb4KUVxXl7fEdn6+i8BtBcXThz4uipB/fg
         RkJg==
X-Gm-Message-State: AA6/9Rl8/JU2bTpsDIya5k/KvPx0E4uacJNc5T4A70Hm56olyOqSGO8x+SYIe9hYXqR7JA==
X-Received: by 10.66.232.164 with SMTP id tp4mr4881912pac.29.1475176181253;
        Thu, 29 Sep 2016 12:09:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id q2sm22094405pfi.35.2016.09.29.12.09.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 12:09:40 -0700 (PDT)
Date: Thu, 29 Sep 2016 12:09:40 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Namrata A Shettar
Message-ID: <20160929190938.GA4070@d830.WORKGROUP>
References: <d3e3a8a4-9ecc-47d5-ab28-27ed0bd9b848@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d3e3a8a4-9ecc-47d5-ab28-27ed0bd9b848@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 29, 2016 at 12:02:17PM -0700, Namrata A Shettar wrote:
> Please grant edit priveleges.
> 
> Thanks!
> 
> namrata

Done, but I'm not use to seeing spaces in the name, so might be wrong.
Let me know if it's a problem.


> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d3e3a8a4-9ecc-47d5-ab28-27ed0bd9b848%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


