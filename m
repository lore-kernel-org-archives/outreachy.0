X-GM-THRID: 6211053698454388736
X-Received: by 10.140.232.148 with SMTP id d142mr4362587qhc.4.1446172789916;
        Thu, 29 Oct 2015 19:39:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.165 with SMTP id w34ls1017216qge.68.gmail; Thu, 29 Oct
 2015 19:39:49 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr4297924ywg.26.1446172789184;
        Thu, 29 Oct 2015 19:39:49 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id sm2si487457pab.0.2015.10.29.19.39.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 19:39:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so58684738pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 19:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-type:content-transfer-encoding;
        bh=HB3DqkFOly+Fra6+BcOelGWGchl3JKrXuVJXHK94Eis=;
        b=uixbxC6OqfVW1qaK+pJbTzSZpMTQPraJwpcR/Ezk9RhxK9yJPk3a89qZeRFtVzUn7L
         HA1z4+uprxXBjgXnwlaIod7gvQdKwypJCFKFwQcsINOy3QOjaskofAt7C90vjgep2iwz
         zHc3bRzS9xHbR4BjEd2mGo7BaDzpyiQQTsO+2Y8F2htTdyWJbhH41iIx1133BxSmypYJ
         savZJowaJYzHhenF0LZ9r3b0SmydkdYVZw9A8yX9nY9vg+kVdFzVo/irtuaxMA+bxpVB
         8BpDiXX14K4LBdpxAx/6m29Hdfee7FkMMTGky2Qr69MxE7m4iAFQxlpvOaErpb+C+IwN
         UOqw==
X-Received: by 10.68.134.167 with SMTP id pl7mr5637315pbb.45.1446172788998;
        Thu, 29 Oct 2015 19:39:48 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from ubuntu ([103.26.195.49])
        by smtp.gmail.com with ESMTPSA id bn1sm4856556pad.17.2015.10.29.19.39.47
        (version=TLSv1/SSLv3 cipher=OTHER);
        Thu, 29 Oct 2015 19:39:48 -0700 (PDT)
Date: Thu, 29 Oct 2015 19:39:43 -0700
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: media: bcm2048: fix
 code indent for conditional statements
Message-Id: <20151029193943.363556fd6ad8c9ee80e30961@gmail.com>
In-Reply-To: <alpine.DEB.2.02.1510292141130.2027@localhost6.localdomain6>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
	<6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam@gmail.com>
	<alpine.DEB.2.02.1510292141130.2027@localhost6.localdomain6>
X-Mailer: Sylpheed 3.2.0beta5 (GTK+ 2.24.10; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 29 Oct 2015 21:42:36 +0100 (CET)
Julia Lawall <julia.lawall@lip6.fr> wrote:

> 
> 
> On Thu, 29 Oct 2015, Amarjargal Gundjalam wrote:
> 
> > This patch fixes the checkpatch issue:
> > 
> > WARNING: suspect code indent for conditional statements (8, 24)
> > 
> > Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
> > ---
> >  drivers/staging/media/bcm2048/radio-bcm2048.c |    6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > index fb55e59..4948122 100644
> > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > @@ -1001,7 +1001,7 @@ static int bcm2048_set_fm_search_tune_mode(struct bcm2048_device *bdev,
> >  
> >  	if (!wait_for_completion_timeout(&bdev->compl,
> >  			msecs_to_jiffies(timeout)))
> > -			dev_err(&bdev->client->dev, "IRQ timeout.\n");
> > +		dev_err(&bdev->client->dev, "IRQ timeout.\n");
> >  
> >  	if (value)
> >  		if (!bdev->scan_state)
> > @@ -1616,7 +1616,7 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
> >  			if (((bdev->rds_info.radio_text[i+1] << 8) +
> >  				bdev->rds_info.radio_text[i+2]) ==
> >  				bdev->rds_info.rds_pi)
> > -					match_b = 1;
> > +				match_b = 1;
> 
> This change and the next one leaves the continuation lines of if the if 
> test with the same indentation as the then branch.  Consider also lining 
> up the test with the right side of the coresponding (, so that there is 
> some difference between the test and the branch.
> 
> julia
> 
> >  		}
> >  	}
> >  }
> > @@ -1752,7 +1752,7 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
> >  			if (((bdev->rds_info.radio_text[i+1] << 8) +
> >  				bdev->rds_info.radio_text[i+2]) ==
> >  				bdev->rds_info.rds_pi)
> > -					match_b = 1;
> > +				match_b = 1;
> >  		}
> >  	}
> >  }
> > -- 
> > 1.7.9.5
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

I fixed these and other alignments in the next patch [PATCH 3/6]. I tried to make single type of change in each patch.
-- 
Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>

