X-GM-THRID: 6341764941506150400
X-Received: by 10.176.86.87 with SMTP id z23mr1288190uaa.29.1476569931012;
        Sat, 15 Oct 2016 15:18:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.15 with SMTP id p15ls3919939iod.36.gmail; Sat, 15 Oct
 2016 15:18:48 -0700 (PDT)
X-Received: by 10.107.33.70 with SMTP id h67mr5222666ioh.75.1476569928963;
        Sat, 15 Oct 2016 15:18:48 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id x14si3119443vkd.3.2016.10.15.15.18.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 15:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id p25so538901uaa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 15:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iKuv5Qiy6XSIKO8hgwyBV4dOZ0jbzbbcbbXlW7R91H4=;
        b=IFaQR3ZRKPok68+9xizmQaQjau2ky1Wpax2WlxM6PyqaXLY6InBWckJC9N3B5KpxQO
         /YlynhWOTSsFZu3UsWOfYE9SZQ7C+ZkSWFYHUSxgoyhCar8UifFx/oUncr5NBM0+Fj8v
         oShYUfwQ9DBoeY1gAh1uR6pRmnDMkUXmZXrM8zQypgWcm9xR98ZqKNUOxz8fIZGvOFqj
         8XyuRTjqYa8qsGtq+Kffdmuc2YLTrCs4zxGdqTj08RG8LWrSkYFcICJX+nMS8H85F8km
         gmIsHyelJBzcj37mSy/DnDH4Bds+wYBFax3Ot2YPzVS3+GKrlE3TbzzvQu3gri+XIJzJ
         yimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iKuv5Qiy6XSIKO8hgwyBV4dOZ0jbzbbcbbXlW7R91H4=;
        b=XhyYYbaFe19bvBB/+9PJztqRWhzUgN05bHjh/1AvJYhfwEACdY1ZPs/Fdtx7FZMvbj
         FCn6zm94nBqTROkFTifpz6BLlOt7eDVYe9yNLqMYPnMmeu5zw46RBEEmxmkn8t4iOnF0
         tQqeyTDqjgR2Rs0Lz5GpE/Z90MwXylhSIcKa6yGKq8w0xyx7AvWH1CWK7AHgsaAUlE29
         ai+Fovd8/27uPujReECLynwAHv4VnisywBYPFzEHyNJSW4XqT2ZZvRxlk9E0FJQkszLg
         qhPQRaQOrWlf/E0qbRyfCvvt/xq97icVwAqNTQEJSSbM97g6fP0E097j0WpsEru2nX/M
         WhJQ==
X-Gm-Message-State: AA6/9Rm7fyAe63k34PMTi+e82Hdz8YDFxJ8yuKz+yu9sOnRyiUOGWX1mRxMcEY4gEgTobQ==
X-Received: by 10.176.16.25 with SMTP id f25mr2405206uab.67.1476569928799;
        Sat, 15 Oct 2016 15:18:48 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id g65sm9315197vkd.2.2016.10.15.15.18.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 15:18:48 -0700 (PDT)
Date: Sat, 15 Oct 2016 19:18:42 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Remove unnecessary
 extern variables.
Message-ID: <20161015221842.GA17856@lennorien.com>
References: <20161015184643.GA2580@lennorien.com>
 <alpine.DEB.2.20.1610152051200.9280@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1610152051200.9280@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 15, 2016 at 08:51:51PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 15 Oct 2016, Elise Lennion wrote:
> 
> > The externs were removed because there are already declarations
> > in wilc_wlan.h for them.
> 
> Are these functions actually used in more than one file?

Actually not, I see that in this driver there are many extern variables
that could be declared in a .c file as static.

elise

> 
> julia
> 

