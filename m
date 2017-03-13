X-GM-THRID: 6397037316898029568
X-Received: by 10.99.23.95 with SMTP id 31mr17532128pgx.122.1489432507854;
        Mon, 13 Mar 2017 12:15:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls3691334otb.38.gmail; Mon, 13 Mar
 2017 12:15:07 -0700 (PDT)
X-Received: by 10.13.216.20 with SMTP id a20mr16675570ywe.10.1489432507352;
        Mon, 13 Mar 2017 12:15:07 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id a3si3268886pfb.2.2017.03.13.12.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 12:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id g2so50581336pge.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 12:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Gm36aAAcAeZbGBwClgvnkzwADcFvFs8RzeqcAnkNdoY=;
        b=R3zjqSqVmc7uNULsukuR8VJCcIMGDBP2aabJIL3cDW3V62TY7DS+EoWT12qfpDUuTR
         kgag3WrqrE4XnX05q/mpzy8AY34wxJFCP7S7J3Ow7cj4gxfC+HvXHYg/JQjeyTRIG9F9
         aVIUOCuzgB0oDa7A/mgwv83QmL8qvSrqjP3kI07HcoKtcWXj0UEB3lOFi+9j8SimMzyK
         0mm3loS1Zd+LuaGvi+8BStdM8o0JcssMfU/9vATUuV6f0sHrDrf7x/5fYdyZOPoI1dbx
         aFNlKI3NbQeAkU4Un+z/F4Jauud4is7mp0qFpOQVVAJBTtmBds2BKtVRn7AEvQyIB/Pf
         tCpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Gm36aAAcAeZbGBwClgvnkzwADcFvFs8RzeqcAnkNdoY=;
        b=DUXbUmiB7Qv7EcY2bt978EOV+Dyw+AapmYXqOUiBAzRWJzdSwtXwtsd8ckxfAJaG/h
         8xGpjXmhj3Jl5eysvhUBSWn0nn42gk2vjMjCwnqV3rFzVFmXKw5Zeh27M9KhcwT/MUlq
         1qSEgaPxIBJeZEf9wF7HGN3eGNxIr8217Xvai6oYxgCIw/qHYpAIEfyjgkEfU5MfSKN3
         jrGK9KdfOXp3uZF+D5cq+A1y3m6S/q9JwBQ3Tv/Mco6oSbw5gDU0eVYfSmI88cV24OVN
         kFMboJQGckqP8hhh/TKsManpDhbO1wyDeic4SfbB4jFhFz2IhK4Dwwm8kjc9jGmXCdJ+
         VM7g==
X-Gm-Message-State: AMke39m8J8ozhUIKiVJ/KpKajmklNNyU9+hRYwn22hXc3WDnB111BK6dlo+Ze9/zMLmIjg==
X-Received: by 10.99.47.68 with SMTP id v65mr39051915pgv.23.1489432507117;
        Mon, 13 Mar 2017 12:15:07 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id q64sm34351321pga.0.2017.03.13.12.15.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 12:15:06 -0700 (PDT)
Date: Mon, 13 Mar 2017 12:15:05 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] AishwaryaPant
Message-ID: <20170313191504.GA5941@d830.WORKGROUP>
References: <20170313095731.GA3648@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313095731.GA3648@aishwarya>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 03:27:31PM +0530, Aishwarya Pant wrote:
> Hello
> 
> I would like access to edit privileges on kernerlnewbies to I can
> start working on tasks.
done
> 
> Thanks
> Aishwarya
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313095731.GA3648%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.

