X-GM-THRID: 6758181371904
X-Received: by 10.194.53.225 with SMTP id e1mr1832281wjp.4.1425589372707;
        Thu, 05 Mar 2015 13:02:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.9 with SMTP id l9ls432696wic.11.canary; Thu, 05 Mar
 2015 13:02:52 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr1827485wjc.5.1425589372375;
        Thu, 05 Mar 2015 13:02:52 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id bg8si348914wib.3.2015.03.05.13.02.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:02:52 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesp10 with SMTP id p10so53329339wes.12
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KSeasL5ZE2hA7yjzwmjPHdzK6KziGlhiMV1PEBhdrHY=;
        b=F1fG6UVSGU3oRUxLKV3F+8EK6h+ct6pljytwl373fwBiyCXGXJ6LvuMzAM0FG5KCph
         giX7ngZdoPJjgmeMJp3jVnNS4aCTmBu5rQLWBiYzxdSefWpdXWF2NHR0kPxDgi/ykjm8
         QFzGxa3y+jUAOUEFK1em+2CRxHnVk7upl0qH1piNJ6uzOrZSb8o89XlaCeXCdH6K3Dg9
         sOtob1uTxcnrjBxbbf9X1SUBLJODDHOXcaxz4wKDWeyMH0Zoe+GYELj2AGQsc5ndHc84
         x61nR64Ga9qsapu0ORHZ9oBzUd7hh6trYsTe2A/orTdSQem00+yVsOAfBrekuE6HbDB3
         WZTQ==
X-Received: by 10.194.158.234 with SMTP id wx10mr22876197wjb.23.1425589372219;
        Thu, 05 Mar 2015 13:02:52 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id vh8sm12102929wjc.12.2015.03.05.13.02.50
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 05 Mar 2015 13:02:51 -0800 (PST)
Date: Fri, 6 Mar 2015 00:02:48 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 7/7] Staging: ste_rmi4: Clean
 dev_err() logging
Message-ID: <20150305210248.GA29073@example.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
 <1425584605-28448-1-git-send-email-hamohammed.sa@gmail.com>
 <alpine.DEB.2.10.1503051539250.2735@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1503051539250.2735@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Mar 05, 2015 at 03:40:32PM -0500, Julia Lawall wrote:
> On Thu, 5 Mar 2015, Haneen Mohammed wrote:
> 
> > This patch removes  __func__ from dev_err. dev_err includes information about:
> >  (devcice, driver, specific instance of device, etc) in the log printout, so there is no need for  __func__.
> > This was done using Coccinelle, with the following semantic patch:
> >
> > @a@
> > expression E;
> > expression  msg;
> > @@
> >
> > dev_err(E, msg, __func__);
> >
> > @script:python b@
> > e << a.msg;
> > y;
> > @@
> >
> > if(e.find("%s: ") == True):
> > 	m = e.replace("%s: ", "", 1);
> > 	coccinelle.y = m;
> > elif(e.find("%s ") == True):
> > 	m = e.replace("%s ", "", 1);
> > 	coccinelle.y = m;
> > elif(e.find("%s:") == True):
> > 	m = e.replace("%s:", "", 1);
> > 	coccinelle.y = m;
> > else:
> > 	m = e.replace("%s", "",1);
> > 	coccinelle.y = m;
> 
> Clever!  Does it give false positives?  Or maybe false negatives (not
> finding all cases).
> 
> julia
> 

Yes, I think I ignored the case when __func__ isn't the last argument.
but I just fixed that with this:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

@script:python b@
e << a.msg;
y;
@@


if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;									

@c@
expression a.E, a.msg, a.R;
identifier  b.y;
@@


- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

> > @c@
> > expression a.E, a.msg;
> > identifier  b.y;
> > @@
> >
> > - dev_err(E, msg, __func__);
> > + dev_err(E, y);
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 37 ++++++++++-----------------
> >  1 file changed, 13 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> > index f92ae1d..508f8e1 100644
> > --- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> > +++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> > @@ -339,8 +339,7 @@ static int synpatics_rmi4_touchpad_report(struct synaptics_rmi4_data *pdata,
> >  	retval = synaptics_rmi4_i2c_block_read(pdata, data_base_addr, values,
> >  							finger_registers);
> >  	if (retval != finger_registers) {
> > -		dev_err(&client->dev, "%s:read status registers failed\n",
> > -								__func__);
> > +		dev_err(&client->dev, "read status registers failed\n");
> >  		return 0;
> >  	}
> >  	/*
> > @@ -371,8 +370,7 @@ static int synpatics_rmi4_touchpad_report(struct synaptics_rmi4_data *pdata,
> >  						data_offset, data,
> >  						data_reg_blk_size);
> >  			if (retval != data_reg_blk_size) {
> > -				dev_err(&client->dev, "%s:read data failed\n",
> > -								__func__);
> > +				dev_err(&client->dev, "read data failed\n");
> >  				return 0;
> >  			}
> >  			x = (data[0] << 4) | (data[2] & MASK_4BIT);
> > @@ -419,8 +417,7 @@ static int synaptics_rmi4_report_device(struct synaptics_rmi4_data *pdata,
> >  	if (rfi->fn_number != SYNAPTICS_RMI4_TOUCHPAD_FUNC_NUM) {
> >  		num_error_reports++;
> >  		if (num_error_reports < MAX_ERROR_REPORT)
> > -			dev_err(&client->dev, "%s:report not supported\n",
> > -								__func__);
> > +			dev_err(&client->dev, "report not supported\n");
> >  	} else
> >  		touch = synpatics_rmi4_touchpad_report(pdata, rfi);
> >  	return touch;
> > @@ -545,8 +542,7 @@ static int synpatics_rmi4_touchpad_detect(struct synaptics_rmi4_data *pdata,
> >  							queries,
> >  							sizeof(queries));
> >  	if (retval != sizeof(queries)) {
> > -		dev_err(&client->dev, "%s:read function query registers\n",
> > -							__func__);
> > +		dev_err(&client->dev, "read function query registers\n");
> >  		return retval;
> >  	}
> >  	/*
> > @@ -670,16 +666,14 @@ static int synaptics_rmi4_touchpad_config(struct synaptics_rmi4_data *pdata,
> >  						rfi->fn_desc.query_base_addr,
> >  						data, QUERY_LEN);
> >  	if (retval != QUERY_LEN)
> > -		dev_err(&client->dev, "%s:read query registers failed\n",
> > -								__func__);
> > +		dev_err(&client->dev, "read query registers failed\n");
> >  	else {
> >  		retval = synaptics_rmi4_i2c_block_read(pdata,
> >  						rfi->fn_desc.ctrl_base_addr,
> >  						data, DATA_BUF_LEN);
> >  		if (retval != DATA_BUF_LEN) {
> >  			dev_err(&client->dev,
> > -				"%s:read control registers failed\n",
> > -								__func__);
> > +				"read control registers failed\n");
> >  			return retval;
> >  		}
> >  		/* Store these for use later*/
> > @@ -727,7 +721,7 @@ static int synaptics_rmi4_i2c_query_device(struct synaptics_rmi4_data *pdata)
> >  						sizeof(rmi_fd));
> >  		if (retval != sizeof(rmi_fd)) {
> >  			/* failed to read next PDT entry */
> > -			dev_err(&client->dev, "%s: read error\n", __func__);
> > +			dev_err(&client->dev, "read error\n");
> >  			return -EIO;
> >  		}
> >  		rfi = NULL;
> > @@ -799,8 +793,7 @@ static int synaptics_rmi4_i2c_query_device(struct synaptics_rmi4_data *pdata)
> >  					std_queries,
> >  					sizeof(std_queries));
> >  	if (retval != sizeof(std_queries)) {
> > -		dev_err(&client->dev, "%s:Failed reading queries\n",
> > -							__func__);
> > +		dev_err(&client->dev, "Failed reading queries\n");
> >  		 return -EIO;
> >  	}
> >
> > @@ -847,8 +840,7 @@ static int synaptics_rmi4_i2c_query_device(struct synaptics_rmi4_data *pdata)
> >  						return retval;
> >  				} else
> >  					dev_err(&client->dev,
> > -						"%s:fn_number not supported\n",
> > -								__func__);
> > +						"fn_number not supported\n");
> >  				/*
> >  				 * Turn on interrupts for this
> >  				 * function's data sources.
> > @@ -919,15 +911,13 @@ static int synaptics_rmi4_probe
> >
> >  	rmi4_data->regulator = regulator_get(&client->dev, "vdd");
> >  	if (IS_ERR(rmi4_data->regulator)) {
> > -		dev_err(&client->dev, "%s:get regulator failed\n",
> > -							__func__);
> > +		dev_err(&client->dev, "get regulator failed\n");
> >  		retval = PTR_ERR(rmi4_data->regulator);
> >  		goto err_get_regulator;
> >  	}
> >  	retval = regulator_enable(rmi4_data->regulator);
> >  	if (retval < 0) {
> > -		dev_err(&client->dev, "%s:regulator enable failed\n",
> > -							__func__);
> > +		dev_err(&client->dev, "regulator enable failed\n");
> >  		goto err_regulator_enable;
> >  	}
> >  	init_waitqueue_head(&rmi4_data->wait);
> > @@ -952,8 +942,7 @@ static int synaptics_rmi4_probe
> >  	 */
> >  	retval = synaptics_rmi4_i2c_query_device(rmi4_data);
> >  	if (retval) {
> > -		dev_err(&client->dev, "%s: rmi4 query device failed\n",
> > -							__func__);
> > +		dev_err(&client->dev, "rmi4 query device failed\n");
> >  		goto err_query_dev;
> >  	}
> >
> > @@ -997,7 +986,7 @@ static int synaptics_rmi4_probe
> >
> >  	retval = input_register_device(rmi4_data->input_dev);
> >  	if (retval) {
> > -		dev_err(&client->dev, "%s:input register failed\n", __func__);
> > +		dev_err(&client->dev, "input register failed\n");
> >  		goto err_free_irq;
> >  	}
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425584605-28448-1-git-send-email-hamohammed.sa%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

