X-GM-THRID: 6470761478432489472
X-Received: by 10.28.229.16 with SMTP id c16mr104159wmh.13.1506597536093;
        Thu, 28 Sep 2017 04:18:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.138.131 with SMTP id y3ls1090838wry.5.gmail; Thu, 28 Sep
 2017 04:18:55 -0700 (PDT)
X-Received: by 10.28.169.75 with SMTP id s72mr109819wme.21.1506597535568;
        Thu, 28 Sep 2017 04:18:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506597535; cv=none;
        d=google.com; s=arc-20160816;
        b=wyzQlffA8HQ+eA6KufkdgrfBxN+x/WuC6JTIxkD4erCxBX0T1eD1WsB8DajYgq4J4h
         kblxYv2aw+AqxP2vNcEEc13MrzLDa3dOUwDRZ+WSKXYRKvXp4XANrVBBSM6ZOX3iYf+b
         0ZNDhKeppeXdlMBpUItLTZPjsVBwCSeQps/opcXfzee9/fONXUwY3RVG+pnMZLlj73rK
         MMhpnsacZqDU/jJxFmxXSuWDM2rwo9FM+CWdqF/sT8PHRjvlJ5bjQJ8ZC/NPLY+Xke//
         GEBCGqB5QO6XjJgY6xeZKvycv0e7BRmHKUAanuiNoQFgagT+MX664IEpkNVmsfc7czQY
         +xaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=czTcqfxIE9AwBiS9jaljhst5K8nbe3spPGUWVFHkC7I=;
        b=AsXCI42a83PON/yTf2LVIK6Wqki0Su5tTChtp47gcyD42Voi4XQTGDFfgrx86SZg71
         trduKn5zHYqKe3GwVYx0KL1rIT7q9JRbtYTtUtk6WGNvEx8hmCt42ZLPe3QHhn34hGXx
         mdc7LtWgBaqLEEyX2nWb++KZrmFTzMmBvLIjJ0g8S7AdGmjrWF77VzRtrdBXrbu6lnga
         Ybkglpqq8tIMk0uRi2tHxYcRRFWrVXzizQ/1nYXegY8RhCIavc9jTKBZqvV2+9ML4RH8
         I2Vg8pr0TSRzi+MXKeHBHchxU4oCKNVw1cuM8pyjGCxn5SOra98VzsRp43iBU8DN2q8j
         ClOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BkMN4E+7;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id l133si78306wmb.3.2017.09.28.04.18.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 04:18:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BkMN4E+7;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id z1so1736240wre.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 04:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=czTcqfxIE9AwBiS9jaljhst5K8nbe3spPGUWVFHkC7I=;
        b=BkMN4E+7OW1VhUkD4wEQEwk8pA57Q+UcnDJACHfuBgNwRCRmqGhH+lUs7uTTmT4nPg
         9Odo4aWbqOm1UbPw4G6cd4MW30873n5J9LIOIf7Py6MV6m3uc8GAjtksee47AOh1+91i
         zlsTI2Ibg4HCo4v6oAdIEJup5wO+grIvhUamvLy8NiXy2jIel+gUfMonvAoj4DCNpT/c
         TxzlH1gpIfo5tcgni8yrhbUsOd8iA+ZiuVX3taXWPMO5I5ftcoN6QfMJYFkXKgGKoG76
         z9VYTA82EzfzRb3HM+E+GaRn1yw1MMX3zpNjLagMvjKos2rzpoDo4os6XWoMcu7Eet0F
         txaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=czTcqfxIE9AwBiS9jaljhst5K8nbe3spPGUWVFHkC7I=;
        b=hWHuuao/0ywLWkrPy5qzkKdzly8xb6FYVDjR4LwBczzhtOneSMK7H8dG8SM6kFQx2h
         rmCPowgvfg1uA5TdpkmijebQfgO5QJbt8bfsAEWUcIhyUKo3uKpqa/D/fUc8GgP3cAlF
         JKvEZKpd1seQ5sCkJNaQnbhnLHvlqdd/u7N+uej+B6AS7sWF5vOMApQ6Rq8WUrK/ZTbY
         U3QdmtoKwjjoWE/+moyEMvbjqy5wzZE6+FWInXixDXs6mMxxw+DgpOzqzGszOF+eCFmR
         dasTCZ6BaXEye5cZl3M0/52V1jfhWEBpRz2w9DXzNgF9M4jFmXPI3ekVn4OV50m9Etp1
         EL/g==
X-Gm-Message-State: AHPjjUhgBSULlP5ZZ0InnmU/Rg0pvOItOl3pjfUM3bEfMFDiD1Cjzdt7
	HqtROOBqe1sNIAlgdVGy3nw=
X-Google-Smtp-Source: AOwi7QDJICWvNoWc0RjS0MELF1MD+DOqX7NV5sclocmdJipPBZZPdm3ZtBaHk2Je0IlJgngRymWS8w==
X-Received: by 10.223.187.74 with SMTP id x10mr3912162wrg.66.1506597535172;
        Thu, 28 Sep 2017 04:18:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id w4sm2432795wrc.78.2017.09.28.04.18.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 04:18:54 -0700 (PDT)
Date: Thu, 28 Sep 2017 04:18:53 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Remove
 duplicate extern variable
Message-ID: <20170928111853.GA11913@ubuntu>
References: <20170928093917.GA5023@ubuntu>
 <alpine.DEB.2.20.1709281235030.2865@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709281235030.2865@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 28, 2017 at 12:35:40PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 28 Sep 2017, Mihaela Muraru wrote:
> 
> > This patch removes the extern vchiq_arm_log_level variable from
> > vchiq_2835_arm.c.The variable is also declared in vchiq_arm.h header.
> >
> > Issue found by checpatch.pl
> 
> checpatch.pl -> checkpatch.pl
> 
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > index 0159ca4..12b0e0d 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > @@ -84,7 +84,6 @@ static char *g_free_fragments;
> >  static struct semaphore g_free_fragments_sema;
> >  static struct device *g_dev;
> >
> > -extern int vchiq_arm_log_level;
> >
> 
> You're going to end up with two blank lines here.
> 
> julia

Thank you,

I will send patch v2 with these changes

Mihaela
> >  static DEFINE_SEMAPHORE(g_free_fragments_mutex);
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928093917.GA5023%40ubuntu.
> > For more options, visit https://groups.google.com/d/optout.
> >

