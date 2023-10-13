Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C673CF9DF
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 12:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SEshn9KE"
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-32157c8e4c7so1915776f8f.1
        for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 05:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697199164; x=1697803964; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8LGZJR/y71MrZNroBvIwe7TGxhLAIZsz9Mp4xjRfDNo=;
        b=SEshn9KEkItm3WDfTn+JA4dfNcJ+yJCDrZqD9NQnBl0RhS381deqpn7bV0DKiyA4/r
         70bOmZXsImh3xO8ZcbfeUTFXr8uyR0qucbii7QBnpBYXBbMyZfXI2qk/EAR7b0dzqN7a
         vN+84oCa8kb0L6w1lOWXxuuDuw+//VY4HlJXrbbmDNg236Zq70ysy2Wm/A5Z3PcqY6ME
         USgWFihpNNZhTLq9om57wxx197Ab7bSXwlpiX3n+L/zp/yDklwmCws29u18Gt8jirB+a
         LQFROb1XBwb5FvPMzIgZ2SHwABsc300agk7CnexTKkoyJkbmXA4cjuIN9+u7S5VFdUsA
         A3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697199164; x=1697803964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8LGZJR/y71MrZNroBvIwe7TGxhLAIZsz9Mp4xjRfDNo=;
        b=emz3IS/aCNLO3veqoi6dfa84xXO6CdY+20RW7C3TUPU0vC/SNZxelgCQ0jwH+6WlQf
         IZqOajbeNLPQ9sw5aTawnMKyHzTy4L26a4LSqLZjNNx04DqJL0yVLLGO/3eWwX+qcTYx
         jHymF8WkQuUOLQaUL+LyyqmNBBRbdiHhl/ehZtgwudjm3vdbraxb9a/ZGDLpUBJ5AhcF
         DaYxExllqZlKAtqSMtxZpImG02UsuiTnurehSfSW1ySKvriNGM3Ib3EXMdnM8JiZ91Nz
         431E8jZ43lsBHi72AAAD93fo3kgAhyqFJ/i2In6IaMPNod/+eqk8Ggza5I2uivpVOedS
         JCuA==
X-Gm-Message-State: AOJu0Ywca4LL4j7DKpJXfTb0CMngBi38t75xAsm/qphBPqLfhJCHCsOd
	p5AeOD8CHBCNodimw/jS6WxHCQ==
X-Google-Smtp-Source: AGHT+IFrQId3e2I2JlTBoULYCR/H7+bsaYxtMNZ1tZUYf/kvRK/eOFQV33wAqP1yoQmYpPOmpLznjA==
X-Received: by 2002:adf:e383:0:b0:320:1c4:e213 with SMTP id e3-20020adfe383000000b0032001c4e213mr23211870wrm.1.1697199164056;
        Fri, 13 Oct 2023 05:12:44 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id i17-20020adffdd1000000b00326c952716esm20467669wrs.61.2023.10.13.05.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 05:12:43 -0700 (PDT)
Date: Fri, 13 Oct 2023 15:12:39 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Calvince Otieno <calvncce@gmail.com>
Cc: outreachy@lists.linux.dev, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Luke Koch <lu.ale.koch@gmail.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Simon Horman <horms@kernel.org>, linux-staging@lists.linux.dev
Subject: Re: [PATCH v2] staging: wlan-ng: remove helper function
 prism2sta_inf_handover()
Message-ID: <67d90726-15b9-4d64-87c6-bfbf662cbe81@kadam.mountain>
References: <ZSkg7y2Y2T3midXB@lab-ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSkg7y2Y2T3midXB@lab-ubuntu>

On Fri, Oct 13, 2023 at 01:50:23PM +0300, Calvince Otieno wrote:
> prism2sta_inf_handover() function basically calls pr_debug() to print
> a literal string. This can be done by the parent function directly.
> 
> Signed-off-by: Calvince Otieno <calvncce@gmail.com>
> ---
> Patch version v2:
> 	- Replace pr_debug() utility function with the module specific netdev_dbg()

This isn't a v2 patch, right?  This patch assumes that we applied the
v1 patch...

This patch is not white space damaged though so that's good.

regards,
dan carpenter


