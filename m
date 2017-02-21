X-GM-THRID: 6389640527251243008
X-Received: by 10.25.24.106 with SMTP id o103mr2704749lfi.1.1487706354851;
        Tue, 21 Feb 2017 11:45:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls745939lja.1.gmail; Tue, 21 Feb 2017
 11:45:54 -0800 (PST)
X-Received: by 10.25.29.11 with SMTP id d11mr3016653lfd.14.1487706354097;
        Tue, 21 Feb 2017 11:45:54 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id v70si1198596wmf.0.2017.02.21.11.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x243.google.com with SMTP id h67so4168309lfg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 11:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=prQSVwyfWG6myR9yHeKENu1529Kb5mtZk1JCkZPuFxw=;
        b=kSIL0SiAjyMpYAfZtfWubPNjX7bbXGUx2eV+X64WmCmR5ZI6Mo+dPjA8kyIu8vi8Cg
         8r96KiNg3fdz9FSHNbDD6inETqU9ZB0meaVXnkvC7zKfBzuuIUllZik/SwhDPusUfsfj
         WOeX7JxprjRgIysdScVSHnF0QgaVfxIA7s9F9oma8rRVWejUPbhV3Q9QzBB8ixVxLFu8
         aL98g0IYL9lhE3LT//28bygTvIWp2YSBzlIrqUzb7zSCbFgv59LK2BjQu6xdBSSff3GO
         SX+5kMBnAzvDPvYTNcbaXUgl7RRzUCjBFZY6swNNWRFtkndDpO7IdeaLCs8/p71fqieA
         lM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=prQSVwyfWG6myR9yHeKENu1529Kb5mtZk1JCkZPuFxw=;
        b=XE8TL3O+LKBJ4UD7YoO8P/Kb4A7TLHlJOPT8+V+KWSVzaLCDqgS1IHaxtgC8rOrz4B
         l4ZSX2DKLOsbw9eV4CiPkorMhdayJbjGJgnpmgCvElGd4bINCOJRj/xS6W8Zxwc/tyNd
         xuo+4vE0SYxlVM7bxL3W4edvVsPTH1cX66M5Obzur9LIS5QYWThAx2yIolGLiVej0cCy
         jrc5xX9RxrQzjSyO6yKQwlSeHNxQrNc+AblIikp36liDhu5YwNYLo6uzbnxYsSjUGQBQ
         rF66HA3vYSm0nncFNWeUiEyLSZL/o8azy7qtPa3KU+iOW+ah0cmu8JjVX9+0P5e/uN/i
         7D4A==
X-Gm-Message-State: AMke39kA7qoxXb+0wCMxG7dEUk0Cc+HOTAbw4QFhnn8beVhVmOk6EGAn9u4EgWudcpjq1A==
X-Received: by 10.25.15.41 with SMTP id e41mr3636194lfi.117.1487706353604;
        Tue, 21 Feb 2017 11:45:53 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id g100sm6453129lji.67.2017.02.21.11.45.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:45:52 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cgGNl-00014R-FI; Tue, 21 Feb 2017 20:45:54 +0100
Date: Tue, 21 Feb 2017 20:45:53 +0100
From: Johan Hovold <johan@kernel.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	johan@kernel.org, elder@kernel.org
Subject: Re: [PATCH v2] staging: greybus: loopback_test: fix device-name leak
Message-ID: <20170221194553.GE10245@localhost>
References: <1487703983-19655-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1487703983-19655-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 22, 2017 at 12:36:23AM +0530, Gargi Sharma wrote:
> Change array index from the loop bound variable to loop index.
> Memory leak was occuring whenever there was more than one
> loopback device. The pointer to dirent structures must be
> individually freed before freeing the pointer array.
> 
> Coccinelle Script:
> @@
> expression arr,ex1,ex2;
> @@
> 
> for(ex1 = 0; ex1 < ex2; ex1++) { <...
>   arr[
> - ex2
> + ex1
>   ]
>   ...> }
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v2:
> 	-Made the commit message clearer.

Reviewed-by: Johan Hovold <johan@kernel.org>

Thanks,
Johan

