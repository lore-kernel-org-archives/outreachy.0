X-GM-THRID: 6337746804060192768
X-Received: by 10.107.27.213 with SMTP id b204mr471912iob.97.1476145251063;
        Mon, 10 Oct 2016 17:20:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls179409ioe.45.gmail; Mon, 10 Oct
 2016 17:20:50 -0700 (PDT)
X-Received: by 10.36.65.95 with SMTP id x92mr4051932ita.39.1476145250119;
        Mon, 10 Oct 2016 17:20:50 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id t8si89235vkb.2.2016.10.10.17.20.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 17:20:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b186so248843vkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 17:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=e/DvxYNU3AycQL9KiWEUJOu+HuKGqkSmjTX3diQaXuQ=;
        b=MwZ2YBukI+o+zirpSO/+uXkJTzvyL49a12ygY7yLQ5QlmpT1Xt2P6yMIFaSG+S/0he
         dNIY5OelZrrWW2Hvftq5E16r9CuH7vAzcaUA/rvLUS9pvflLeKp+H80ZuSUjBBV1D2Y4
         s9X0pYke4trebFLmR4tw6S+EJjDSCC3pNbyNF3Wk1vtBj4zvAce7VMnnrVB+P8YJgXBb
         5pT9oXjolLLn4wzEMudFP+2T+M/T0d7iVi5gkjNRr47HmXtILYZv3PSnQaIRPtXS/bHF
         EWwHPU6qGMaQ8ErBahmgf6BDUP3NsevG9j7CQFV/ABgJNYZMTCO7lZT35oS4mHUiQ8IY
         cOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=e/DvxYNU3AycQL9KiWEUJOu+HuKGqkSmjTX3diQaXuQ=;
        b=gQSeXQze/IS4LHLWssRwwxxIxt2RGa/2DN6Kj6dAcv8LK7C1iMpx2g54ylYDYE80KY
         U8x8ECtAmwWUc8AZQNMk7x2hYPQyR7wh6hFmq7JSg/tTVHilAigYOMqSxundRbYBSZjl
         bJ0h4QeEFdzwbP+XnqJ1DjcWPjuwhg51gdHLuH+ona4g+yofymON3pT2203VS26/srCJ
         0J/c2snzwK89jgaUvgTAF1ZWhkheR3xB2nSe++232ArPpC2E28ajgDEcZWEUXRzGYY1b
         Q0LAJpaSJUMFBOZzV6yzNpCj8rrJ58Co8wuVpuyAqFDsiTQ40S9hGJ1QOj0gwf3NjUiz
         tKpA==
X-Gm-Message-State: AA6/9RnfVzEEamMLVGASR4KMTyX4NNT2g7UZ6hDxbbpSOQuWWy6m3WxNSR4MGgINvS5gFg==
X-Received: by 10.31.95.7 with SMTP id t7mr1006400vkb.0.1476145249934;
        Mon, 10 Oct 2016 17:20:49 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q7sm309305vke.20.2016.10.10.17.20.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 17:20:49 -0700 (PDT)
Date: Mon, 10 Oct 2016 21:20:43 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: sm750fb: Replace printk() with pr_info().
Message-ID: <20161011002043.GA16781@lennorien.com>
References: <20161009014024.GA30473@lennorien.com>
 <20161009143713.GB11086@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009143713.GB11086@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

> 
> In looking at this further, this is a horrid function.  And it's not
> even needed to be in a separate file.  Please merge it into the
> ddk750_chip.c, which will allow you to make the variables in this file
> static at the same time.

I think I didn't understand which variables should be static.

The variables in ddk750_help.c are globals declared in ddk750_help.h.

They must be global because many files use the macros PEEK32() and
POKE32(), declared in ddk750_help.h, that use them.

If they become static their value will be seen only in ddk750_chip.c
and the macros will stop working.

Did I miss something? Which variables should be static?

> 
> I'll take this patch now, but future cleanups would be great.
> 
> thanks,
> 
> greg k-h

I merged the files in a new patch:
https://groups.google.com/forum/#!topic/outreachy-kernel/LOg5mXl7--s.

thank you,

elise

