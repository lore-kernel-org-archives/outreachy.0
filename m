X-GM-THRID: 6340041071062417408
X-Received: by 10.200.42.12 with SMTP id k12mr3883668qtk.78.1476482777787;
        Fri, 14 Oct 2016 15:06:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls8443627otr.33.gmail; Fri, 14 Oct
 2016 15:06:17 -0700 (PDT)
X-Received: by 10.157.13.163 with SMTP id 32mr999777ots.11.1476482777394;
        Fri, 14 Oct 2016 15:06:17 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id t8si3104381vkb.2.2016.10.14.15.06.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 15:06:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id u68so25794uau.1
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 15:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3ZOU2lUvynWmPsKpX84Bk1caI6iGW4auTl+e3kzX2Bk=;
        b=b/DyMP7qBl2UJV51ZEYmi9QhYqc3JK97kPg0Hexrk9VgH7kLzT6oxWbRUyzoQOrVaQ
         66aaQ9jif70YseGuNugFntIzKNd0A4gtRZGzQTLNHslYtc1oM7tk4eDwWLPumcJRIaJN
         qxeu9pN8ibuu2/zZfcWCA98/AT+0oXTptrJ0SKMAtK6nGZBKbiwrwnhiwXok5EimeT1D
         3tUF/yzY+dWsv5Hv8lszNoObP/FSc7c52w3P1UC2sE7wkpY8obJXBb/HcXHt0rrtEubb
         yA1lcMWYsuBJCJKb3ec0SfBr5gvZKj0Pb51bFr9FwtpcAFXnVovMAoKSO33poz5oN1W3
         ytog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3ZOU2lUvynWmPsKpX84Bk1caI6iGW4auTl+e3kzX2Bk=;
        b=TYdCWelaMNVvp2B+I8/R44uzdPrH6vZm50koykfOs2CuqsC2b5u0tSJUiz/ZkiNxQ0
         kC8koeim/sKpo8C/PlVPfAPNEeCTYKFozKBp8IudgHJTexHGbG3NRdIvviJRtBrsNh7l
         +6gBWAvHC0ubHLgCmPYPQGK2aJoWgzSnSrNsJ6vIl3mJHn4zM/emsCyXPC5IzoAvdi4D
         tRuFGGDS6/qYJISqQjimrIEul14ETrUg4LCuVBh7TW9Top9oVmf6g4d0c5px2LWQc/A/
         coftzGxeLbzN9Xf/cdf10F6uB35qMLBwruiSBsw3cFUCXJAAlmu9B6wFCtj3ce74/YjW
         bZPw==
X-Gm-Message-State: AA6/9Rlk7O1eUo1jLSS+G10hP4U6gDGtjRMFHzmNuZ4M8VENMtB6UNUUDoPE8CYrcHw8CA==
X-Received: by 10.176.4.162 with SMTP id 31mr126604uaw.22.1476482777217;
        Fri, 14 Oct 2016 15:06:17 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m194sm8212431vke.7.2016.10.14.15.06.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 15:06:16 -0700 (PDT)
Date: Fri, 14 Oct 2016 19:06:10 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] staging: greybus: Replace sscanf with kstrto* to
 single variable conversion.
Message-ID: <20161014220610.GA7083@lennorien.com>
References: <20161013224559.GA13383@lennorien.com>
 <20161014074023.GA29112@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161014074023.GA29112@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 14, 2016 at 09:40:23AM +0200, Greg KH wrote:
> On Thu, Oct 13, 2016 at 07:45:59PM -0300, Elise Lennion wrote:
> > Fix checkpatch warning:
> > 
> > WARNING: Prefer kstrto<type> to single variable sscanf
> > 
> > kstrto* is designed to convert string to numerical value and makes
> > it easier to understand what the code does.
> > 
> > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > ---
> > 
> >  v2: No change since v1 in this file.
> 
> You forgot to add the driver name to the subject :(

Oh, sorry. Corrected it in a new version.

New version:
https://groups.google.com/forum/#!topic/outreachy-kernel/rO_sFmskRu4

When the subject of the new version does not match the previous
subject, should I manually link the new version to the thread?

thank you,

elise

