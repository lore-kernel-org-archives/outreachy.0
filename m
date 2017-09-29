X-GM-THRID: 6470117861435113472
X-Received: by 10.84.130.67 with SMTP id 61mr693369plc.34.1506692131708;
        Fri, 29 Sep 2017 06:35:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.247.202 with SMTP id v10ls2044124plz.1.gmail; Fri, 29 Sep
 2017 06:35:30 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDH6TTE8t7pDaIehpGThhWUzxe0Xun4DYVq/JHB1IDkc02ETxMVf13KGwa78Y5cuiY7x6ll
X-Received: by 10.84.236.5 with SMTP id q5mr704961plk.17.1506692130572;
        Fri, 29 Sep 2017 06:35:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506692130; cv=none;
        d=google.com; s=arc-20160816;
        b=jPYqXu9b2jJZ5ZLAlohaWE81u43hba0l8KXfzegkt7Q6YEtyzHRrhD+Iot4KLpdDIU
         EwxzeN+wRI0ex5bcdeRLm4UwQyuplMmMCy1trMfnExmz6bJpNNJM74/WRK3PAIejKlwI
         3Xv2HYQ7QYUdKq9s4uWnNBmZ3kQvZFquhVuaPMAOKn+f8Ik7eBnQAK4PuV/CzoBHy1af
         7ayWqcsj92EzjJXyWAzQfhuL2gC+F9byEGU4YeVylT376XQrSVWANjzU3RAanPwa00Q1
         C57MhpOK6DbGfUd12UK4cSCdnD4z4BK3RQz3MElZPjGAwXnpDLvWK6YOPUwmiD2k2pa+
         imlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=WUuNAdPGclRPZgo+LJC2iP8vdoBn4hmMEUn24zxt634=;
        b=vKl4Z1g2JE1tRCINV99Fpq1SX99oQgRs5zucxvZBB22OQBTZBD8g0j2tlVo4xAw3/g
         dBXIRkUULjM1ULD0Xgpx+RYefV4dzdK29/5vC+yA6OOpPV6znOTbEuuddSLl/C/YVgdN
         hihuk23KV1wx6/sG2DZHvS/zaBlrmutKX0KBzwWv5zWYL8/e2lAWcuaMzFOMuysHJsyR
         AICBdp3RGOdfwspX/bJQM1Pk3KpJ46wkg/e8sMml2Y5mMeI8+19U2IZ15wVhfrM88Aga
         1Py/9j7cWV8aHqUAS6i2JCYQwNzaaK8Wosx8JWL5picJeyvZ3Ef2qq6NB4znawNT9rij
         8CfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r78si551897pfb.3.2017.09.29.06.35.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 06:35:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [195.81.232.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 002AFAAE;
	Fri, 29 Sep 2017 13:35:29 +0000 (UTC)
Date: Fri, 29 Sep 2017 15:35:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH v2 03/10] Staging: media: atomisp: Remove unlikely from
 NULL pointer check
Message-ID: <20170929133526.GA12061@kroah.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
 <b359615a44297a3a4d2e13b41fc898799196d3c2.1506436974.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b359615a44297a3a4d2e13b41fc898799196d3c2.1506436974.git.georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Tue, Sep 26, 2017 at 09:01:31AM -0700, Georgiana Chelu wrote:
> Remove unlikely because kmalloc uses it inside the source code.
> 
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> ---
> 
> Changes in v2:
> * this is a new patch added to the patchset

As I didn't take patch 2, I can't take this one.  Please fix up and
resend the remaining patches in this series.

thanks,

greg k-h

