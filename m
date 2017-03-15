X-GM-THRID: 6397014578406883328
X-Received: by 10.129.45.86 with SMTP id t83mr2283716ywt.68.1489595944862;
        Wed, 15 Mar 2017 09:39:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls2630769otc.44.gmail; Wed, 15 Mar
 2017 09:39:04 -0700 (PDT)
X-Received: by 10.129.102.215 with SMTP id a206mr2105095ywc.141.1489595944480;
        Wed, 15 Mar 2017 09:39:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x22e.google.com (mail-pg0-x22e.google.com. [2607:f8b0:400e:c05::22e])
        by gmr-mx.google.com with ESMTPS id 2si431574pfz.1.2017.03.15.09.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 09:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) client-ip=2607:f8b0:400e:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22e.google.com with SMTP id b129so11502527pgc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 09:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=X8OP+ClFRUABXwjJlKHF9zGhzMXwelQvgYXarxSGogQ=;
        b=FWRoXyv0dJr5oALnf3qG3osUI0i54utOZrOBjwcZnKmNdo5nNwxCdAwuTFHR8ratU7
         L6g29pVfyisD5W/S5ZtEU+1655U4/C0OmUgu1yNT5K8m/a1Dl9rkwJEolA9U8bUDB0rO
         skwAd0GN3oUZkDyD2SlHiOIx+C1U47L/iE2RHeBiMZTwulR76MT9rx61RUTPNPjlSCKq
         d5mf/7f11S/JigvFDK7JZ4PQb5C5F/SNi7qHnH7L07duHio3TMQo/R9Zsc4YzBsTx+z9
         EDhlDjGXClAwEinAHFxjh2ZoEzixreEtXrQrGGPK0xSp2QJo6nmO0sKSPcxDaMGqWslA
         O9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=X8OP+ClFRUABXwjJlKHF9zGhzMXwelQvgYXarxSGogQ=;
        b=XbFAeWgN/UNtpA/i0wYwIAo0plh/yDXUmu2olwK0dQPLMO+W4F6FN5CnkC+GnG9YfO
         3gni8NiPJUv6h8/wEGBnWUPo9Vqssvqg9aO2CHrfIPAmvneOq0O1FySK203oPN+IbdbJ
         M8JEkC4K/PiI+MAOxlobgNswJ7O1vyaz0cS8eTfgmJX+L5/YVhwStKXItCJAfVglW29B
         YJKZwzTDpwCWOGIC1ht8rG55QDp+GfmkHpPcWh/rwpTpHrnzpdsQNqlE+2VYf03Vgktj
         BxAkpeWSKQGaYL2Bx54tHx95fgJB8Irn4Gqi4ylVQO8IppTxjmPdKZOfhEGZzmkV8xn/
         Up8Q==
X-Gm-Message-State: AFeK/H2v7cdFkuSv9L5FjI26opukbdDJZhRoJPM6swN3oX1ozFoZlKZQb3xLGnySrG/FbQ==
X-Received: by 10.98.63.24 with SMTP id m24mr4789186pfa.143.1489595944221;
        Wed, 15 Mar 2017 09:39:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id w14sm5381047pgo.37.2017.03.15.09.39.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 09:39:03 -0700 (PDT)
Date: Wed, 15 Mar 2017 09:39:02 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: karniksayli1995@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: IIO mlock task - note this!
Message-ID: <20170315163901.GA1948@d830.WORKGROUP>
References: <20170313160338.GA1703@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313160338.GA1703@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 09:03:39AM -0700, Alison Schofield wrote:
> We're off to an interesting start with this task - to be expected!
> 
> Please read all of the feedback on all of the patches - not just
> yours.
> 
> Lots of good stuff came in from Lars last night.  Absorb it all.
> 
> Please note that Simran & Sayli (are mind-readers), and they
> sent their patches before I posted the Task directions, so
> their 'Send patches to' lists are a bit more than requested
> in the directions. 
> 
> Please pay attention to this from the directions:
> >> Please sign up for one driver at a time, take it all the way through
> >> ACK, before selecting another one.

Reminder of above rule please.  This allows you to apply learnings
from one patch to the next.  Exception would be Simran, who had already
sent 2 patches before I posted the task.

BTW: if you claim one and you don't like it, it's OK to toss it back
and claim a different one or, of course, you can ask for help.   

I'm seeing interesting analysis/findings as you all dig into these!

alisons

> 
> Questions, please ask.
> 
> alisons

