X-GM-THRID: 6207450266150633472
X-Received: by 10.50.66.240 with SMTP id i16mr14542039igt.9.1445287561653;
        Mon, 19 Oct 2015 13:46:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.68 with SMTP id h4ls907806iga.19.canary; Mon, 19 Oct 2015
 13:45:56 -0700 (PDT)
X-Received: by 10.107.134.102 with SMTP id i99mr6628iod.34.1445287556189;
        Mon, 19 Oct 2015 13:45:56 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si3523237pbb.0.2015.10.19.13.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id rc13so200901228pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 13:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yeK6uMGgpHXnuRw9wbL5Sm8ja0MuLyY0SVMCl640dvs=;
        b=JP9PXzA5sX3ennBeN2NsAX5m/+3jngmHHVtFsjmQKS2CK/hVu+dbWNXki57uHEEBZT
         ittSziOZIG3QT+85beA8zgtAMaJsg2kmZD224OAVK8VcXFlZrGkko+WXXGUHOYGvyzG8
         YdHXoeNGriPFIiHsTrEsLFOIBLjVdvv4CLDBJiSf0Y9g8PAeawi3JOzbxQv4y0JFAoKf
         r/1x7nEeOssnbdhSSILYTEb65JTJqncuHjuQqPq5Bogl1FAWMxXT1L0rqaomgj3RWUBU
         dU/mbyrQIxuh2bwJFoQAluPE4jn65hdp9DHQ86CrwMYUJq1qZUjKpYfwQHtztR0zLBQd
         CwuQ==
X-Received: by 10.69.1.67 with SMTP id be3mr37371214pbd.78.1445287556082;
        Mon, 19 Oct 2015 13:45:56 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id u10sm37872699pbs.63.2015.10.19.13.45.55
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 13:45:55 -0700 (PDT)
Date: Mon, 19 Oct 2015 13:45:54 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: r8723au: move constant
 to right of comparison test
Message-ID: <20151019204553.GA23946@Ubuntu-D830>
References: <cover.1445282918.git.amsfield22@gmail.com>
 <65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22@gmail.com>
 <alpine.DEB.2.02.1510192206040.2034@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510192206040.2034@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 19, 2015 at 10:06:21PM +0200, Julia Lawall wrote:
> On Mon, 19 Oct 2015, Alison Schofield wrote:
> 
> > Move constant to right of comparison test to improve readability.
> 
> Was it intentional to also move it below the comment?
> 
> julia
> 

This was not intentional and I don't see it as moved in my 'working'
file. It has raised a big red flag that the process I used to create
this patchset is wrong.  I'm going to retrace my steps, but if you have
a quick thought on where I screwed up...I'd appreciate it :)
- edited single final with all 5 types of changes.
- used git add -pi to add each hunk and commited each..one at a time
I thought the results would be 5 independent patches, but now I don't
think so!

Thanks for any pointers!

alison



> > 
> > checkpatch.pl:
> > 	WARNING: Comparisons should place the constant on the
> > 	right side of the test
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > index 33164d3..6034428 100644
> > --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > @@ -637,13 +637,13 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
> >  		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
> >  		res = rtw_enqueue_cmd23a(cmdpriv, cmdobj);
> >  	} else {
> > -		if (H2C_SUCCESS != disconnect_hdl23a(padapter, (u8 *)param))
> >  
> >  		/*
> >  		 * no need to enqueue, do the cmd hdl
> >  		 * directly and free cmd parameter
> >  		 */
> >  
> > +		if (disconnect_hdl23a(padapter, (u8 *)param) != H2C_SUCCESS)
> >  			res = _FAIL;
> >  		kfree(param);
> >  	}
> > -- 
> > 2.1.4
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

