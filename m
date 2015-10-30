X-GM-THRID: 6211053698454388736
X-Received: by 10.129.116.136 with SMTP id p130mr1395967ywc.4.1446187721437;
        Thu, 29 Oct 2015 23:48:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.69 with SMTP id c66ls525278iod.15.gmail; Thu, 29 Oct
 2015 23:48:41 -0700 (PDT)
X-Received: by 10.66.122.201 with SMTP id lu9mr4667564pab.8.1446187721012;
        Thu, 29 Oct 2015 23:48:41 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si568246pab.1.2015.10.29.23.48.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 23:48:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so65245620pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 23:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-type:content-transfer-encoding;
        bh=DHEzp3LezbMJDNN3kd28DCnvGtQhopxI4XtsJk6PRhs=;
        b=T7u+5Q5qYtOHD184DMZADmNs6GjsW1c7attusv4n91DYX335otOUHqdektKJ2RD8sa
         mOB9Tm5F41ev0P4b5ij1AlC2rmyHSSCjNlXKBLGBfDMcXOpye3J5X2VDJPPy/d32L0ER
         Q3bWst645kR4u7c4VrObZo/pLgQiFhXzYfxQGvaub1JkF0Ql6GVLrDqPLmhXq/30S7N1
         0MrE73UH1c48E52NUbpKUWuAeqRZOprzlzfttAYTUS5N6DtDAl5yJtUi6RS/Oy/LTYt6
         M9vjxnXrDZaJIoU5dOU/NXilONr710/EcSh4RH+cM57g3fLVjGlsc9rZCYMc1ZjtjTaZ
         fV9Q==
X-Received: by 10.68.105.34 with SMTP id gj2mr6761429pbb.136.1446187720867;
        Thu, 29 Oct 2015 23:48:40 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from ubuntu ([103.26.195.49])
        by smtp.gmail.com with ESMTPSA id ij3sm6024664pbb.62.2015.10.29.23.48.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 23:48:40 -0700 (PDT)
Date: Thu, 29 Oct 2015 23:48:33 -0700
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: media: bcm2048: fix
 code indent for conditional statements
Message-Id: <20151029234833.eb6cc67b92f1d763d6035553@gmail.com>
In-Reply-To: <alpine.DEB.2.02.1510300720150.2253@localhost6.localdomain6>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
	<6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam@gmail.com>
	<alpine.DEB.2.02.1510292141130.2027@localhost6.localdomain6>
	<20151029193943.363556fd6ad8c9ee80e30961@gmail.com>
	<alpine.DEB.2.02.1510300720150.2253@localhost6.localdomain6>
X-Mailer: Sylpheed 3.2.0beta5 (GTK+ 2.24.10; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 30 Oct 2015 07:23:13 +0100 (CET)
Julia Lawall <julia.lawall@lip6.fr> wrote:

> 
> 
> On Thu, 29 Oct 2015, Amarjargal Gundjalam wrote:
> 
> > On Thu, 29 Oct 2015 21:42:36 +0100 (CET)
> > Julia Lawall <julia.lawall@lip6.fr> wrote:
> > 
> > > 
> > > 
> > > On Thu, 29 Oct 2015, Amarjargal Gundjalam wrote:
> > > 
> > > > This patch fixes the checkpatch issue:
> > > > 
> > > > WARNING: suspect code indent for conditional statements (8, 24)
> > > > 
> > > > Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
> > > > ---
> > > >  drivers/staging/media/bcm2048/radio-bcm2048.c |    6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > > > index fb55e59..4948122 100644
> > > > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> > > > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > > > @@ -1001,7 +1001,7 @@ static int bcm2048_set_fm_search_tune_mode(struct bcm2048_device *bdev,
> > > >  
> > > >  	if (!wait_for_completion_timeout(&bdev->compl,
> > > >  			msecs_to_jiffies(timeout)))
> > > > -			dev_err(&bdev->client->dev, "IRQ timeout.\n");
> > > > +		dev_err(&bdev->client->dev, "IRQ timeout.\n");
> > > >  
> > > >  	if (value)
> > > >  		if (!bdev->scan_state)
> > > > @@ -1616,7 +1616,7 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
> > > >  			if (((bdev->rds_info.radio_text[i+1] << 8) +
> > > >  				bdev->rds_info.radio_text[i+2]) ==
> > > >  				bdev->rds_info.rds_pi)
> > > > -					match_b = 1;
> > > > +				match_b = 1;
> > > 
> > > This change and the next one leaves the continuation lines of if the if 
> > > test with the same indentation as the then branch.  Consider also lining 
> > > up the test with the right side of the coresponding (, so that there is 
> > > some difference between the test and the branch.
> > > 
> > > julia
> > > 
> > > >  		}
> > > >  	}
> > > >  }
> > > > @@ -1752,7 +1752,7 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
> > > >  			if (((bdev->rds_info.radio_text[i+1] << 8) +
> > > >  				bdev->rds_info.radio_text[i+2]) ==
> > > >  				bdev->rds_info.rds_pi)
> > > > -					match_b = 1;
> > > > +				match_b = 1;
> > > >  		}
> > > >  	}
> > > >  }
> > > > -- 
> > > > 1.7.9.5
> > > > 
> > > > -- 
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > > 
> > 
> > I fixed these and other alignments in the next patch [PATCH 3/6]. I 
> > tried to make single type of change in each patch.
> 
> When you reply, put the comment just under what you are replying to.  
> Otherwise, it is hard to see whether there is a reply at all.
> 
> I guess making another patch is a solution, but the reason why the 
> branches were double indented was that the tests were already indented - 
> the developer was trying to preserve the property that the branch should 
> be indented more than the test.  So it would have been reasonable to 
> preserve that property in your solution as well, rather than just address 
> the checkpatch warning.
> 
> julia
> 

Ok. Then I'll send another version without these changes.

thanks,
amarjargal

> > -- Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151029193943.363556fd6ad8c9ee80e30961%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 


-- 
Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>

