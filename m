X-GM-THRID: 6207450266150633472
X-Received: by 10.182.246.98 with SMTP id xv2mr668016obc.3.1445308462159;
        Mon, 19 Oct 2015 19:34:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.97 with SMTP id rj1ls66186igc.30.gmail; Mon, 19 Oct
 2015 19:34:21 -0700 (PDT)
X-Received: by 10.67.7.170 with SMTP id dd10mr623043pad.36.1445308461670;
        Mon, 19 Oct 2015 19:34:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id zg1si61682pbb.2.2015.10.19.19.34.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 19:34:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fv9so5360074pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 19:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pS/fJZP2ppKMOkSsGn6pCM3OJSJ3QLICsPm6PEnL1IA=;
        b=oAm0CWtj7GB/mCQZEwGDDeTqlAbxCg6dBc7K21kGV1Zcs8ZIkHteUMORrQi+CJPTaL
         zKaXwf6wuCwVJiKvZDsrkUiy0tEdi3yHsGVbBWeVmqw3jj5D0BkiKwMDWldt3GVd24Om
         H8mwAklCABMtTYhnPORYD5W+DUSXe30TtKpeC2Owg4G2suv/7v9QzOBwzeqXLQf9Kdp5
         D+vDLwL3VZ5UhTdhF9xtYeWN2PZv65nAA9I+PUAN1sUCcB/6p5huFBe38sFKEF8KLH7i
         TmyFOnvMASG7wAg3711rPIeG3Etdvtd0I2qQX1OTwWMIZYj40MQE0PJvWUilzVRGnQS4
         82MA==
X-Received: by 10.68.184.162 with SMTP id ev2mr872539pbc.109.1445308461563;
        Mon, 19 Oct 2015 19:34:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id tp6sm524094pbc.81.2015.10.19.19.34.20
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 19:34:21 -0700 (PDT)
Date: Mon, 19 Oct 2015 19:34:20 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: r8723au: move constant
 to right of comparison test
Message-ID: <20151020023419.GB24424@Ubuntu-D830>
References: <cover.1445282918.git.amsfield22@gmail.com>
 <65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22@gmail.com>
 <alpine.DEB.2.02.1510192206040.2034@localhost6.localdomain6>
 <20151019203548.GA23803@Ubuntu-D830>
 <alpine.DEB.2.02.1510192241110.2034@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510192241110.2034@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 19, 2015 at 10:41:31PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 19 Oct 2015, Alison Schofield wrote:
> 
> > On Mon, Oct 19, 2015 at 10:06:21PM +0200, Julia Lawall wrote:
> > > On Mon, 19 Oct 2015, Alison Schofield wrote:
> > > 
> > > > Move constant to right of comparison test to improve readability.
> > > 
> > > Was it intentional to also move it below the comment?
> > > 
> > > julia
> > 
> > This was not intentional and I don't see it as moved in my 'working'
> > file. It has raised a big red flag that the process I used to create
> > this patchset is wrong.  I'm going to retrace my steps, but if you have
> > a quick thought on where I screwed up...I'd appreciate it :)
> > - edited single final with all 5 types of changes.
> > - used git add -pi to add each hunk and commited each..one at a time
> > I thought the results would be 5 independent patches, but now I don't
> > think so!
> 
> No idea, sorry.  Maybe someone else will have an idea.
> 
> julia
> 

Realized the error of my ways. (Need to put on sep branches to get
independent commits.) Will resend entire set. 

alison

alison

> > 
> > Thanks for any pointers!
> > 
> > alison
> > 
> > 
> > 
> > 
> > 
> > > 
> > > > 
> > > > checkpatch.pl:
> > > > 	WARNING: Comparisons should place the constant on the
> > > > 	right side of the test
> > > > 
> > > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > > index 33164d3..6034428 100644
> > > > --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > > +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > > @@ -637,13 +637,13 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
> > > >  		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
> > > >  		res = rtw_enqueue_cmd23a(cmdpriv, cmdobj);
> > > >  	} else {
> > > > -		if (H2C_SUCCESS != disconnect_hdl23a(padapter, (u8 *)param))
> > > >  
> > > >  		/*
> > > >  		 * no need to enqueue, do the cmd hdl
> > > >  		 * directly and free cmd parameter
> > > >  		 */
> > > >  
> > > > +		if (disconnect_hdl23a(padapter, (u8 *)param) != H2C_SUCCESS)
> > > >  			res = _FAIL;
> > > >  		kfree(param);
> > > >  	}
> > > > -- 
> > > > 2.1.4
> > > > 
> > > > -- 
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > > 
> > 

