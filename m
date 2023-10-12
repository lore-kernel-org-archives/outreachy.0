Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478CE224FE
	for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 11:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m3ZhGJuf"
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3296b3f03e5so735644f8f.2
        for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 04:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697109066; x=1697713866; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EsRO8Olsxs+7cMl8N1+mH/vH+BOLcsWRlVIoQqYdhlE=;
        b=m3ZhGJuf0TfuFyYBpq2BM4GHgBPTSsSqF6pLk+T24Br2zqLc7smjE/EgM08f5DUx/v
         G9YsFP4w4JxE3j2QZz8n2m9dONjJuKik1OvJkH1z1fwPw8zeJ5lUus7PTK33Tg8679iO
         RW+1+MlFeixYXxpaswXTfBn6Jz69mTc0ThTv8fg3A3JLPajPpmK+8B0BjwK1rGHLxDhQ
         xfda+1p4jaZ8xnOAUJatdrbP3WsFb+7uXvuLTZn3K9SePl4nzSpKUPTrbFuj8CiucdSX
         fI4LCmiUKJaHqkI+tN36kcvx94a3J/k5CxUsNNOeLomMXNVIrRa0OaHOsY+h4yasA/9W
         H4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697109066; x=1697713866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EsRO8Olsxs+7cMl8N1+mH/vH+BOLcsWRlVIoQqYdhlE=;
        b=TZDQhMQcotp6AHndWQBSsjIjf8QT94z9Sp8w0OOatsxy8If2fOLPTerueHBx6z/4YW
         Z5WyeIiJ6zMQWk/+7zF9c+VwaGoQ8kHfkeQkge0X4/g8QNS7qCkS6FHgr7yEKqiEfXjK
         rBT+D7j/oujux/mY5CQhEMDpRf6hYRf08JsSA7MwUlC5hYnTLLccmUiuUaA4vljlOoae
         eENCC7OQYrVIeQx5g3i45GW8PhjKUA2GgfY3kc0dguvjgVaiME4BHqwLZGXiD9gYpnTp
         0IgCJ1dNM3ELEPnvt2KbNK+beJCZ6OYp/ABVWZ+VyZtEBXCroUZrpAIUAnefH/BMK84v
         htBA==
X-Gm-Message-State: AOJu0YydCIU0VGbEJ1qY+Qcp0VVM6spSvH9ElpQzINtAgnL6B6VzZAGI
	t5fQtHNRpoMFzNjYmscnHQ==
X-Google-Smtp-Source: AGHT+IEF4zpjWLbXt34C30m62AUqe1TentgTbYkQYI+5GiWUnsIcc9+lZ+hi/QMgypenDk4y6Mhb3w==
X-Received: by 2002:adf:e9c7:0:b0:320:b1b:86a9 with SMTP id l7-20020adfe9c7000000b003200b1b86a9mr20235703wrn.24.1697109066119;
        Thu, 12 Oct 2023 04:11:06 -0700 (PDT)
Received: from dorcaslitunya-virtual-machine ([105.163.2.146])
        by smtp.gmail.com with ESMTPSA id v7-20020adfedc7000000b003197efd1e7bsm17971680wro.114.2023.10.12.04.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 04:11:05 -0700 (PDT)
Date: Thu, 12 Oct 2023 14:11:03 +0300
From: Dorcas Litunya <anonolitunya@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy]Inquiry on checkpatch.pl
Message-ID: <ZSfUR5xFB42BxNFf@dorcaslitunya-virtual-machine>
References: <ZSfQSSvna4hX0tnM@dorcaslitunya-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSfQSSvna4hX0tnM@dorcaslitunya-virtual-machine>

On Thu, Oct 12, 2023 at 01:54:01PM +0300, Dorcas Litunya wrote:
> Hi Julia,
> 
> A general inquiry on the checkpatch.pl link in the documentation page
> is not working. This is found in the "Start creating first patch"
> section. When you click the link, it seems to be broken, as it returns a
> 404 error message. Any assistance with regards to this will be
> appreciated.
>
To think of it, I don't think the link should be working since the
script is in the script directory. So you can just ignore this message.
:-)
> Kind regards,
> Dorcas
> 
