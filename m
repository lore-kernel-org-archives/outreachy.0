Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CF87C
	for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 00:16:16 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id a17-20020a9d3e11000000b005cb483c500dso9666526otd.6
        for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 17:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Fzs2IKPVwMwL0NmMAqC0j3iNnoXFsg1gGQk2oPbhwHk=;
        b=mdp56HB5d+6BsQjsOAgPIkp3DRG9jxnIzu4sX1wSt5Ijcnl2PLxGykuTwm6+WfIii+
         RItauRrHCmw/iqNthcXiDz24FEvu+xNEOW0yFqXYHgimLDawGTmd+Bru9exgxTLqTNtj
         oX73SJPEkBjIeg5WTh2ss/fAAhtTpu5jrQ1DYYbwv7NezRzsw3wzSZtkGkLL6hmJfUG/
         21ruLmdgXBsv3eYQvyVbrlIf11DWuD0+9WlKobod+pOlJn2T8kYW/AS5Je0LZekXsjAm
         p3vBzHZgaiDZiC/8ulJGKO8ZPm4udl05B5kvsGHhExj9JM43YQ7XGhUVEf2XOj3PC42u
         nDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Fzs2IKPVwMwL0NmMAqC0j3iNnoXFsg1gGQk2oPbhwHk=;
        b=MbfB6AqPDFE04zq/CcPgQtY1L+komly7y3VxVzPkLA0Z264Hi0iI3DAb+cBOkuPi6Y
         wXhTorOTxAJBCoxqI6V4qSXk9d+wjYDwRN/p+uMFsvl6Wb8OMpMSu/bLx6Dtk8yJGX4p
         aqLZuoSDDA5wAalWiizxFHP7//W6Jg+hH8ghDXeyQlK6efnBAcm3H96BzhqJ5JywfQgb
         H0QWmX1LoOVb0/H473eNK7L3o1SLD0LtL/DwAryGt1Yc0Jx5lRxIhzJ78Px2XmkDRnlu
         C7PYa/QcV+CmZt6adEWWiaLDlkhiCu5PNBwgnPVaawUA48I/8Cv0zFFVfYckUPcGXbun
         Meew==
X-Gm-Message-State: AOAM533rswgI6iAXsl55bGHF5esrE6X6gu8QyU9O2hEYJgNRgQ0c8hZu
	xme1Qrs0m1Y7IIDzwFD+JTM=
X-Google-Smtp-Source: ABdhPJy0OEAZOFrJl42yNCVMySeWHNS9zQlwBrDo7RuiCV89twDcGqVF6xopgyHLfVhbw54ondd8TQ==
X-Received: by 2002:a9d:66cd:0:b0:5b2:3cf2:2e21 with SMTP id t13-20020a9d66cd000000b005b23cf22e21mr8929421otm.5.1648426575208;
        Sun, 27 Mar 2022 17:16:15 -0700 (PDT)
Received: from [192.168.21.4] ([170.84.56.148])
        by smtp.gmail.com with ESMTPSA id s26-20020a4ac81a000000b00322a2b5d943sm6051466ooq.37.2022.03.27.17.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Mar 2022 17:16:14 -0700 (PDT)
Message-ID: <dd79b324e01740af619f4d3e0a57e1409e718606.camel@gmail.com>
Subject: Re: IRC channels
From: brunodout.dev@gmail.com
To: Stefano Brivio <sbrivio@redhat.com>, Alaa Mohamed
	 <eng.alaamohamedsoliman.am@gmail.com>
Cc: outreachy@lists.linux.dev
Date: Sun, 27 Mar 2022 21:16:11 -0300
In-Reply-To: <20220327213039.579d15d7@elisabeth>
References: <20220327180801.GA477239@alaa-emad>
	 <20220327213039.579d15d7@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Alaa,
Hi Stefano,

On Sun, 2022-03-27 at 21:30 +0200, Stefano Brivio wrote:
> Hi Alaa,
> 
> On Sun, 27 Mar 2022 20:08:01 +0200
> Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com> wrote:
> 
> > Hello All,
> > 
> > I am Alaa , My initial application approved. I have

Heyy Alaa, congratulations for that! I am very glad to be
here and hope you are too!

> >  I couldn’t join both irc channels, any guide plz

Are you using the web client? If you are, you might access
one of Stefano's links to join the first channel, and then
join the second one with the command:

/join #second-channel

> 
> Can you try these links?
> 
>         
> https://webchat.oftc.net/?randomnick=1&channels=outreachy-
> kernel-networking&prompt=1
> 
>         
> https://webchat.oftc.net/?randomnick=1&channels=kernel-
> outreachy&prompt=1

Using both links as Stefano said will also work, but you'll
have two browser tabs and two different connections using
two different nicknames for that. I think adding both
channels sepparated by comma in the channels=... part of the
URL might also work, but I haven't tried.

Best regards,
Bruno (IRC: CodeAgain)
