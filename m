X-GM-THRID: 6948788358969556992
X-Received: by 2002:a05:6830:1690:: with SMTP id k16mr13343071otr.112.1617989727620;
        Fri, 09 Apr 2021 10:35:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7456:: with SMTP id p22ls2346127otk.11.gmail; Fri, 09
 Apr 2021 10:35:27 -0700 (PDT)
X-Received: by 2002:a05:6830:2050:: with SMTP id f16mr12652867otp.182.1617989727038;
        Fri, 09 Apr 2021 10:35:27 -0700 (PDT)
Received: by 2002:aca:f513:0:b029:13d:58cc:a567 with SMTP id t19-20020acaf5130000b029013d58cca567msoih;
        Fri, 9 Apr 2021 09:45:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwE35fLFW1tEAtpNjXhkK+5dMHDQPkeHlnvkvpKEpVsbzwIdlpxLn10L7oGT5kzslq3E1jx
X-Received: by 2002:a05:6e02:964:: with SMTP id q4mr12444204ilt.85.1617986739432;
        Fri, 09 Apr 2021 09:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617986739; cv=none;
        d=google.com; s=arc-20160816;
        b=kH7ERLWpjg+tNpxo9JpRyY5obXKqhybZ+3LWk6fgOqgMtCMV7tbQRPXcFjaVmK65JR
         lk0XBPraJXTX771CjlXfN27wkZnDAKxu5kRdPh/SNDn+WqoBLWhlL4f5+/A9x+msOjF+
         s5gbmqCMcx55KVKCXvIPMbYKmO9AAuvgrZDuKfjB7ff1RYbW2865bERkiuR0iHOHaZiM
         dOrT4d5+2uAeK4l44cLP1kRpvMZ5FUxUlDcu7Hvk+LcdFPuTK0L78sDwvBYgRMQWMJ1/
         3oUhcIXX71gHWVZVcWG3AdcWv46qzeh7bAcjbBMfT2wm4Jl0lflmscpfbgVmMqdww4DJ
         7+ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=mAaAEaJhCcgmJ3ajoYguyLX5id9pXXL1DQaSryo0/MQ=;
        b=hOu1Bnph0MbVhSBLSmbriI2AgYXHRIY1YsnPTAngXMSfQyfbibeYWZAU+2RONIFnMJ
         1r2ohfcLhakcDx1L8XgPtLcrWMwl7Dg0cNjNPSQyYbwBBuNiBDF0mIbzRVPxLC8XqrfR
         a1ZX6GcPRbipuQRG1B8wCSMRqUcaq7QMlid+CpnO+sEC6vZeWFgDYiVWmXZP0NhPx78f
         l/M0so4Hf0ZS47vlDlQkWbGgXRi7Nea5H2w9dTA8P8gpdHfV1wy0zZ9m6lGdecv3zoZL
         8QfZRUaJxiIvgBtwdb9lYQfq+1BSlL85eSKOIBnOJUpLybafbYSOHbz/3vfk3RYnhECj
         nlXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <ezequiel@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id h18si204336ilh.5.2021.04.09.09.45.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Apr 2021 09:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: ezequiel)
	with ESMTPSA id D66C31F4677C
Message-ID: <09b7bddcba779ac1ed0c71cebf206f9bb4009f47.camel@collabora.com>
Subject: Re: [Outreachy kernel][PATCH 1/2 v3] staging: media: hantro: Align
 line break to the open parenthesis in file hantro_hw.h
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 13:45:31 -0300
In-Reply-To: <03fb1d7b8066fd6fb6086fff18cf29b9afd9ac17.1617970550.git.alinesantanacordeiro@gmail.com>
References: <cover.1617970550.git.alinesantanacordeiro@gmail.com>
	 <03fb1d7b8066fd6fb6086fff18cf29b9afd9ac17.1617970550.git.alinesantanacordeiro@gmail.com>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Aline,

On Fri, 2021-04-09 at 09:24 -0300, Aline Santana Cordeiro wrote:
> Aligns line break with the remaining function arguments
> to the open parenthesis. Issue found by checkpatch.
> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
> Changes since v2:
>  - Rename the commit messages properly
> 
> Changes since v1:
>  - Send patchset without the cover-letter

Why did you remove the cover letter? What was wrong with it?

Thanks!
Ezequiel


