Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D42917C4
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 05:15:03 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id t12-20020a17090a3b4c00b0020b04251529so1990324pjf.5
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 22:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L1RG2jRhSsCxd1NTLoOfUufAelhtwRErcrCvSnbRV1c=;
        b=Rw+dUX42Sv2HRwqPLiaSDG6X+VWGitPSabj3HdKjD9hdKSqSpmH6zYKXxh9h3zOQHc
         QPefWyo2bT8OnDTwIDsnK7p+cLN0ByEM8k7NPSPd8D37GPNL8jrSaP/FaDDJyxOqkkPN
         CIsYE8P675LBpg1CEylu+Ej7f1UCKsiFc/o/ChvnltvlRnVjd113ZE+6lq8oKWlEHzI7
         GGJi3ypLhA5K9wYROOJehClfrBZJV7EiCAXceO89DQSSDX5zhJjIvo2uLvBonocCLaeW
         zv8pZNu11Qx9wmZPq6IaIZuxN6S8uR+Vz/MqmenNr5dtRxnMOZUpi90dPIwjgPTHaYqH
         Fh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1RG2jRhSsCxd1NTLoOfUufAelhtwRErcrCvSnbRV1c=;
        b=V+Xjom0tl9BZFiqDTf0XzroKZqxysQrOFslvXx/Z6NBpcVgKTeVrexwdyc8YAXXrla
         pTrL2TJ0v2pYnqyQv3wkwLEMm1Nto74IAgdr8fp/j6ZmXBq7W+4+MJOvI8qa0fwpQhbZ
         e9AwiRXaMA0pV3Jo5x2Q5Guet/LIsxff8PBKR5Et+Yqa2CZGSBYAhYI1yZfAAVfjEVxh
         Gvhx00jZMBPA7NQUTbCrdH/L7FVC7LpNLMktO7ri/V6uzsTd5uoVB2K0+wW6TeCUBrag
         bg7+9eaIGufK8mL+WJ2dKXZobwmGu5qZUxuyan5VzRBaI8AhBOqKwYmuiSKGkBYPXcQG
         NU+w==
X-Gm-Message-State: ACrzQf28+N9vN1fymF2yii6lgDA1nA2YX7mnPkji8VyKZvpb64HB5noI
	80fbiVsaHhDamaufoj7R7+hFY+ALFuG86g==
X-Google-Smtp-Source: AMsMyM4M9xh1oxlbCWSIxxk3BoJ1uVlNAtzs7WiqWYXyGqQ0q8LcLIPNGmyvrV2swi1qUM8JeDU18w==
X-Received: by 2002:a17:90a:ea95:b0:20a:f65b:143b with SMTP id h21-20020a17090aea9500b0020af65b143bmr14169214pjz.230.1666242903059;
        Wed, 19 Oct 2022 22:15:03 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id v18-20020a634812000000b0043b565cb57csm10788736pga.73.2022.10.19.22.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 22:15:02 -0700 (PDT)
Date: Wed, 19 Oct 2022 22:15:00 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Praveen Kumar <kumarpraveen@linux.microsoft.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Weird formatting in rtl8723bs driver code?
Message-ID: <Y1DZVIYUFgIBhEbN@marshmallow>
References: <Y1C179JmHDc3eI9G@marshmallow>
 <0a6a6853-5720-28d2-13de-c5e7334ff7ba@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0a6a6853-5720-28d2-13de-c5e7334ff7ba@linux.microsoft.com>

On Thu, Oct 20, 2022 at 09:31:33AM +0530, Praveen Kumar wrote:
> On 20-10-2022 08:13, Emily Peri wrote:
> > I'm working on cleaning up the rtl8723bs driver with checkpatch, but I
> > noticed that some of the variable declarations have differnt amounts of
> > whitespace, like this:
> > 
> >         struct cmd_obj  *ph2c;
> >         struct sitesurvey_parm  *psurveyPara;
> 
> Addition to white-spaces you can also rework on making variable names to Linux standards, something like "psurveyPara" to "psurvey_para".

Great suggestion, thanks!

> 
> >         struct cmd_priv                                 *pcmdpriv = &padapter->cmdpriv;
> 
> This needs some formatting in my understanding. 
> 
> >         struct mlme_ext_priv    *pmlmeext = &padapter->mlmeextpriv;
> > 
> > At first I thought this was intentional, but now I'm wondering if this
> > is an accident. It's normal to just use one space between the type and
> > the variable name, right?
> > 
> 
> In my understanding and what I've observed we use one space between the data type and variable name, but would let others to comment on this. Thanks.

Okay good to know I'm not alone in this line of thinking haha. If I
continue working on this driver (probaly won't get to it until Friday)
I'll clean up the spacing.

> > 
> > --Emily
> 
> 
> Regards,
> 
> ~Praveen.
