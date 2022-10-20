Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9492E17C4
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 05:17:54 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id p14so19294561pfq.5
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 22:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LJAZS0eqiwaj7a1YDMEEbawR4obvTLFfSE9bo13ZbXA=;
        b=pNW6ZxIVbQkMe3OHi6jvwXmCitctkLJFyxvWtnpap3+On3mvOIpjxPUrTqP9p9Notg
         VnEKkY+uI0si7VsGLjN+RlVQr19MpL+NK8cKTi4HCaBEOTFp+go4kN/8+E9xWC9RuOeK
         iZLbhbuAi0/D3mbjhPPf3obDkpq6fyS++hNSmVqwCxX5lwKTBPSLvgG4aPGvj9SryQuO
         lqwmnls8mNWZ9dNKPARXm/NgnQw4kAh7pSACK4o6/AbwljifzqTFRr4xoD/QffgrjvNb
         4lu2m93pB8zBj9jFNXi1D/6p94CSUyPVRyQ7aqBlq9e2ctR8aF5QpYo5nrqyj4+8pYPu
         uIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LJAZS0eqiwaj7a1YDMEEbawR4obvTLFfSE9bo13ZbXA=;
        b=q8xAAsPb6aX4g5vtInJn+z67/Ln6OPAsM1tQwuuHVSN0Yc3b4CYFdYh+PgWGYsHU/J
         /YWOTA/PX6uV2S1RT35l73m/eMUw9noNqTx6ttbZt6lNQCS89SmlQqzpqjQscm9wzt17
         H4s0SgKTp6iiHRFXHkWKv3Vz/9h0GagerZjw9/yYpdgZJt4TVr3cf75p8W2q9odkG6/3
         n7U227O87ZZzUAh34suX/Td+mvcLH0rRX5cEWVgQpM8xAe8glYgx5nTyKSoLso85Iqn4
         wNwz1zpPA3x70CrpdK0JBoNtki7RXV9xVUorIAv4tTwCYWAIJ1lw4FSL7nzhc7FIeZuf
         D+sw==
X-Gm-Message-State: ACrzQf2i8ZRwF2jnHmWNhOHxZca6feXqXD8MxZLfERKmV5+2rbEAcvFo
	VhmlZ/9BqXgKlLzfNPWG8Qg=
X-Google-Smtp-Source: AMsMyM6nwLNc+MbhseTUugYmsaI9AvrFS+e94hX49dj1fVYy91URSmJivuNoStwP1nV608oQ/OSOJg==
X-Received: by 2002:a63:c5d:0:b0:460:17cc:73a6 with SMTP id 29-20020a630c5d000000b0046017cc73a6mr10260358pgm.332.1666243074062;
        Wed, 19 Oct 2022 22:17:54 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id a6-20020a17090a688600b001f94d25bfabsm832670pjd.28.2022.10.19.22.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 22:17:53 -0700 (PDT)
Date: Wed, 19 Oct 2022 22:17:51 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Weird formatting in rtl8723bs driver code?
Message-ID: <Y1DZ/53mOJqhKpjJ@marshmallow>
References: <Y1C179JmHDc3eI9G@marshmallow>
 <alpine.DEB.2.22.394.2210200713100.2988@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2210200713100.2988@hadrien>

On Thu, Oct 20, 2022 at 07:13:58AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 19 Oct 2022, Emily Peri wrote:
> 
> > I'm working on cleaning up the rtl8723bs driver with checkpatch, but I
> > noticed that some of the variable declarations have differnt amounts of
> > whitespace, like this:
> >
> >         struct cmd_obj  *ph2c;
> >         struct sitesurvey_parm  *psurveyPara;
> >         struct cmd_priv                                 *pcmdpriv = &padapter->cmdpriv;
> >         struct mlme_ext_priv    *pmlmeext = &padapter->mlmeextpriv;
> >
> > At first I thought this was intentional, but now I'm wondering if this
> > is an accident. It's normal to just use one space between the type and
> > the variable name, right?
> 
> One space should be fine.  People may like to line up the variable names
> in some cases, but this is clearly not lined up either.
> 
> julia

Oh, that makes more sense! I'll keep that in mind.
