X-GM-THRID: 6249599077237915648
X-Received: by 10.129.25.212 with SMTP id 203mr5226674ywz.35.1455345206955;
        Fri, 12 Feb 2016 22:33:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.7 with SMTP id ei7ls334839igc.16.gmail; Fri, 12 Feb
 2016 22:33:26 -0800 (PST)
X-Received: by 10.107.134.68 with SMTP id i65mr6135100iod.33.1455345206431;
        Fri, 12 Feb 2016 22:33:26 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si1730111pfb.1.2016.02.12.22.33.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:33:26 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id gc2so947571pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=pw5RlXE2sspnH6q2MaMeoDxJw2c9SkgikZRg+hR6Zw4=;
        b=Xq8lcR/izwdXHyj8blAwL7L0sUeM5izGSZFvGYnsnhImSQIbgF9d4ZbTR2iyD10PIb
         svR79B76czBhUqu396WTlgNFGDiGjsT2EkpVxH3HLIBuSzqElvi3KdUp+4BOQs4fEO3T
         Geu5M9wQhzJLvWOpUdbvFP4FO3KOICWmzXSdwiiJWT6fn0T2RIN+dG2BBD9TOnwYRWKk
         mjKzRA1BBfPb7TW+15WsroPIx5GXmhyBXD+NOrHQBUVwfSt55INLO2gnR8b412z8cTbT
         /pLjY4J6Aj2yReaMH2HKbM3FJ7/b0Kidzw+3Gj8tSpGqn2AeG1YmG97j3deqsgoRIHd9
         GYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=pw5RlXE2sspnH6q2MaMeoDxJw2c9SkgikZRg+hR6Zw4=;
        b=c7NrP/34+5BsZj4kV2Enot66BVzyedT/lnFPIml65Y1itUVeuv8GN5suEQO7e1SR+U
         uMDOa39LYPxL8cshOZVI3VJBxBKzBlsjsuFsG6uTfC76RFxnWiKXyrNJ3cGetoWjWWUD
         kGEhx8kIfZ2RND7GVQiImxG1+mGC11+ll2xoVQAk50aW2cy3rZM2Wal4nRfrVhnqYTJ5
         oGqXZhqCM2DW1NmpQKFI4+WkUg6GU6LTJOG+Jy8/iRp5ckzjDpxUHUKn4pXgSg5Vxw9b
         /qhAX2peTfzh7VNQyZIhYKvMzIhBMqkkMWniFh1DBZRn1bsTaaFgOLf1xC3VfF/gJEy6
         HiKA==
X-Gm-Message-State: AG10YORyLpjneKKbwd4ijIbMx5m3FLy8VbaLeQi3MqgDWWIgD07Tq8o1ygO88sBHcMksBQ==
X-Received: by 10.66.255.39 with SMTP id an7mr2371601pad.2.1455345206309;
        Fri, 12 Feb 2016 22:33:26 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.84])
        by smtp.gmail.com with ESMTPSA id tv6sm23666361pab.4.2016.02.12.22.33.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:33:25 -0800 (PST)
Date: Sat, 13 Feb 2016 14:33:22 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: fbtft: Add blank line
 after function declaration
Message-ID: <20160213063318.GA31021@Socrates-Mint>
Mail-Followup-To: Tejun Heo <tj@kernel.org>,
	outreachy-kernel@googlegroups.com
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
 <1455210550-11363-4-git-send-email-eraretuya@gmail.com>
 <20160212170930.GI3741@mtj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160212170930.GI3741@mtj.duckdns.org>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Feb 12, 2016 at 12:09:30PM -0500, Tejun Heo wrote:
> Hello, Eva.
> 
> On Fri, Feb 12, 2016 at 01:09:08AM +0800, Eva Rachel Retuya wrote:
> > Insert the required whitespace after the function declaration as
> > suggested by checkpatch.
> > 
> > CHECK: Please use a blank line after function/struct/union/enum
> > declarations
> 
> While checkpatch suggestions can be useful, I don't think following
> them blindly is a good idea.
> 
> > diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
> > index 9f7c7ec..6b8f8b1 100644
> > --- a/drivers/staging/fbtft/fb_ili9163.c
> > +++ b/drivers/staging/fbtft/fb_ili9163.c
> > @@ -236,6 +236,7 @@ static int gamma_adj(struct fbtft_par *par, unsigned long *curves)
> >  
> >  	return 0;
> >  }
> > +
> >  #undef CURVE
> >  #endif
> 
> I don't think this improves anything and it also breaks symmetry with
> the matching #ifdef above.
> 
> Thanks.
> 
> -- 
> tejun

Thank you for your input. I will keep this in mind on my future patches.

Eva

