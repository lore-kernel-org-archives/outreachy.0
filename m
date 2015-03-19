X-GM-THRID: 8361998286848
X-Received: by 10.182.104.37 with SMTP id gb5mr79880629obb.45.1426737321442;
        Wed, 18 Mar 2015 20:55:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.132 with SMTP id d4ls622253ioj.68.gmail; Wed, 18 Mar
 2015 20:55:21 -0700 (PDT)
X-Received: by 10.66.148.40 with SMTP id tp8mr62462503pab.35.1426737321076;
        Wed, 18 Mar 2015 20:55:21 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id pc4si38140pac.0.2015.03.18.20.55.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 20:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22d.google.com with SMTP id op1so63055126pdb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 20:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=cJTqdnOG8NvTCdHA58QhQFIX50LNFKdpWdbUdxZw63s=;
        b=d/8X+8hCdzLfh3cAq/3hNTcvIhcixuSkMjCUyptkQJCwVSNacXWJ7Ipn44m2ivjb0g
         Zq5nKojMi3FYKu+BwYJBVH3g8dzH9d6bW4sGj9WZMBsiSKUzZSlU5Dk0ODqv/nWoisl2
         ON0mIb2O0GEKEF9tgnq1k6Zc7/g5H0oWuK0uLERXMxgzZy9qdRNZBZHCfwWS0kVwidiY
         UyPzJI6mI7Q+GCZGtN2HZCu57f/9PlD9ORUCs3MHgdVI0K8qMpJu58oBv4JxrcZESWO1
         AfOOoulracOUulA1g6we4xD/fOjP/i7cr1JOBBL8KtRrD5Py+TjbvM+phsL2O9RHheZS
         tGaw==
X-Received: by 10.66.55.68 with SMTP id q4mr154323747pap.71.1426737320950;
        Wed, 18 Mar 2015 20:55:20 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from gmail.com ([222.117.133.143])
        by mx.google.com with ESMTPSA id db10sm126488pdb.86.2015.03.18.20.55.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 20:55:20 -0700 (PDT)
Date: Thu, 19 Mar 2015 12:55:13 +0900
From: Supriya Karanth <iskaranth@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: remove return from
 end of void function
Message-ID: <20150319035511.GA6806@gmail.com>
References: <1426390972-31372-1-git-send-email-iskaranth@gmail.com>
 <alpine.DEB.2.02.1503150805370.2070@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1503150805370.2070@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 15, 2015 at 08:07:56AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 15 Mar 2015, Supriya Karanth wrote:
> 
> > This patch removes the return statement at the end of a void
> > function as it is not necessary.
> > 
> > found by checkpatch.pl: WARNING: void function return statements
> > are not generally useful
> > 
> > changes made using coccinelle script:
> > 
> > @@
> > @@
> > 
> > ... when != if (...) return;
> >     when != if (...) { ... return;}
> > -return;
> 
> You can try
> 
> @@
> expression e;
> @@
> 
> ... when != true e
> - return;
> 
> You will still get false positives in loops and switces, but this should 
> let you get more results.  The != true means that you don't go through th 
> then branch of an if, ie no expression is ever considred to be true.
> 
> julia
> 
> 
OK, I didn't realize it was that simple.

It is not working on this file though and I am not able to understand why?
drivers/staging/lustre/lustre/libcfs/workitem.c

There are 2 void functions with return cfs_wi_exit & cfs_wi_schedule and
the script doesn't change it.

> >  
> >  static u8 rtl8192_getSupportedWireleeMode(struct net_device *dev)
> > @@ -2507,7 +2503,6 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
> >  	//we need init DIG RATR table here again.
> >  
> >  	RT_TRACE(COMP_EPROM, "<===========%s()\n", __func__);
> > -	return;
> >  }
> >  
> >  static short rtl8192_get_channel_map(struct net_device *dev)
> > -- 
> > 2.1.0
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426390972-31372-1-git-send-email-iskaranth%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

