Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1601A53A3
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 20:21:21 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id l6so17285102pgu.7
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 13:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e9fLqpp9WQDFgJm4MYXeuE5iwRMExE2URZLEEllFTEE=;
        b=izEjP7tLogCTgtd86Of4SgoN0tjjTFBpJF82y9SBOUg7ueiRV3OXHX1YsRBWb4o8EO
         a6lNHdGjzyh3pmBX2H4hdGWC+2Fbrqpq5OquxEyZdLa3S8a4X0cd9RZpy99QnHukPQQS
         PzMP6g864cWAHarpA8jLj2OAzh5xd+wiWbV2Kut8/TqPZ5HMLJBx7Vzd4vucjQ44nqYN
         n3pdixEIabGlqWjjdH5ic6ku29f6tGZbBdDrVBLrMEVpdk73YVatkGAdjlDAU69rwEQ1
         o+bME4IW/4F9gZpZkntq5DVL3cWmmT7DQVb970V5+RPpyrRXODxpWFuqMHaYU7q5iv3s
         hOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9fLqpp9WQDFgJm4MYXeuE5iwRMExE2URZLEEllFTEE=;
        b=LC8Ptb347NPD3B71kuYGmTtmUyndyKOoDDWrajn9GUn5fVj7PD5f2YTaXUdGlsUOEo
         jJB5sjqoLrxPqmADwKQf2B1g8sZPXKQmKpN3ziNcq/mA5XslcKofkK2getefVAvJ6Los
         ZWJYAlRxLu7gTq7remtVQVRxD0tZdLhnOxKK7jKATfwUb9pRyaur6vs0XVFVz+kVySWn
         pRL8K//QVU9c+JKyz1Ad6jddqciZn5Kt5Q2nhyQCGbrqWGCHJEYTQwKlz0w9WIHoclnV
         5ar/9hJepo5I1guE4jws+jeWk/JxF/k8vSZhUVZFyslcHw79Z2P3wXy3Yi0AfW8J8vr7
         PSrA==
X-Gm-Message-State: ACrzQf1GoFGS02BrlLJu+ADpvQ6SHU3YOpiKrM4VEd/9ESV6tI8nJRFJ
	+KNoDi94SFBSasA0b/bFXiV78NLc3s3dWA==
X-Google-Smtp-Source: AMsMyM6jTHGjGdu686YPK638UWoAobW8JyawmPUzS8oGNpo8mQRKcLKjEBTHv1H+b74S2FVwOcJCBA==
X-Received: by 2002:a63:6a85:0:b0:43b:dac2:ff0b with SMTP id f127-20020a636a85000000b0043bdac2ff0bmr8969926pgc.234.1666210880668;
        Wed, 19 Oct 2022 13:21:20 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id b16-20020a170902e95000b0017b264a2d4asm11196761pll.44.2022.10.19.13.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 13:21:20 -0700 (PDT)
Date: Wed, 19 Oct 2022 13:21:18 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Tanju Brunostar <tanjubrunostar0@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Patch email not showing up in inbox
Message-ID: <Y1BcPq5K5dU7kis+@marshmallow>
References: <Y1BSP5ZT+yju8gLf@marshmallow>
 <alpine.DEB.2.22.394.2210192151210.3068@hadrien>
 <CAHJEyKUDSLFQnALj9Lv4cvheDfhO=kCY-JonFdASu_=d-gJO-Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHJEyKUDSLFQnALj9Lv4cvheDfhO=kCY-JonFdASu_=d-gJO-Q@mail.gmail.com>

On Wed, Oct 19, 2022 at 09:05:03PM +0100, Tanju Brunostar wrote:
> On Wed, Oct 19, 2022, 8:51 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> 
> >
> >
> > On Wed, 19 Oct 2022, Emily Peri wrote:
> >
> > > Hi all,
> > > I sent a patch (staging: rtl8723bs) email to the list serv and ccd the
> > maintainers, but didn't
> > > see the email show up in my inbox. Is there usually a delay with this?
> > > Did anyone else get it? I'm new to mutt so I just want to make sure I
> > > sent it correctly. Thanks!
> >
> > I received it twice.

Thanks for letting me know!

> > julia
> > >
> 
> Always check your sent box instead of your inbox for emails you send to the
> mailing list

Thanks for the tip! I did check my sent, but thought I would also see it in
the inbox since I receive mail sent to the mailing list. Good to know it
doesn't work like that.

> >
