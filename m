X-GM-THRID: 6464947819093426176
X-Received: by 10.223.184.104 with SMTP id u37mr964967wrf.29.1505249024652;
        Tue, 12 Sep 2017 13:43:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.27.27 with SMTP id b27ls175849ljb.8.gmail; Tue, 12 Sep 2017
 13:43:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAQNRPekgyVeOMw+UTj+3Ob193b+nAckh1r0xtBmemyqlS1DdTIQodjPQtisMKIWPtsGtHx
X-Received: by 10.25.40.20 with SMTP id o20mr1334611lfo.41.1505249023272;
        Tue, 12 Sep 2017 13:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505249023; cv=none;
        d=google.com; s=arc-20160816;
        b=WuzVzHpWw/tQqaeW/Ravv/wG167eCof/WlhtjekxHPm+qQe+Gbpf1oGi6sFKWuzS5y
         /7UIOgLW93EXn2O08N1gtlHjLigpYdlT4wNMhGFV3kw6Zc5Pg4JAkD0y2qsS3bjQhquy
         zhtBX9Ns1FjpcATFhcsXov41WdbuqRCxeSgzS1+YELBHNNx7iyMnRu2uqA+sj8AVgS3m
         p0OcU67GRnJQzMYQ7UKHm+MViMCdoSMgcfDLc0a2Wew5eKaY9nK3g34arYhg0whXb2Fd
         betsHMWlIrWvcGLZR5lKwTJE+y/KtSEN48I3PKXEmsVRVSswOod4B1RoxQ3gsgI82vbn
         vrDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=3Kpe4CKV8TovTnNj5cFpP8yUV8fawrJQvokWt9LhRFI=;
        b=ciC6aYZU59NtHorAivnMa0oSG2Qe3OJErY27yRSOVsDi6It1qN0iJAv2uVWFk6gsIT
         x9SeXi/+OZQIqkN+wO4p5PTYFMMggWFU/ME65J1ldlkKZwVXLQghtZWbGJG1V2RT+Qx0
         /pgUm03KiW3U4S3f8Yw1fKkEqKWm/Ad/AE9CFYhupa8advH8fdJQ6o3TEkDVYiYhLspJ
         nysD0q6jbVIki8XtDWwYEUMG7cQFKNbYl+FipV0vrr7mGIN8LLwUgRusJAj4tiDrDnn6
         kQBK1CjckASWVNnN82PaWdnbLukZ93Dq7jlrfFJmtIVWz5SZo11ibQbvInO05HtWilio
         IGyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l133si873606wmb.3.2017.09.12.13.43.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 13:43:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CE312ABC;
	Tue, 12 Sep 2017 20:43:41 +0000 (UTC)
Date: Tue, 12 Sep 2017 13:43:39 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] Staging: vc04_services: Replace "foo * bar" with
 "foo *bar"
Message-ID: <20170912204339.GA31035@kroah.com>
References: <cover.1505234866.git.meghana.madhyastha@gmail.com>
 <50a2d460fbe9c785b7f8d7b66af494c70246bf7a.1505234866.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50a2d460fbe9c785b7f8d7b66af494c70246bf7a.1505234866.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Tue, Sep 12, 2017 at 11:22:24PM +0530, Meghana Madhyastha wrote:
> Preferred coding style.
> Found by checkpath.pl
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchi/vchi.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch does not apply to my tree at all :(

