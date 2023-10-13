Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB393233
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 09:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cHVxGOsr"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40537481094so20096395e9.0
        for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 02:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697187753; x=1697792553; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EitIIr0VXZPrROTEdWmf6yr6Gf534q1TtiPqr2MAdms=;
        b=cHVxGOsrqNN1ViFvNR5DmVjxy+IqDEVJvJn8BA7VTTnCCmeRAk6k3o1mOO8WI5eM8R
         +FJg80tKIppdjvoO08S+ggO5sWRiLc+OX9yH4+Eu3fT4Gyrj+iKKwY4o27Kq3HtLNQAA
         TeCaNFLQmEaT6OSnS7zDcLXSFii3kNm0LbhWSta6UVq0ORevPrLWGd5W7h9SA5x7o1Gl
         L53s/vfGI8cq3BBdWQrIiOLfQ0HQKqj7amdvZkIms0KvDxWe4+htZHmiMcLSHRJqteW/
         xldMfrPeXFF8UBtLwx86/OFB2MIeSmlpSSrPjIXNfVSS764yYO5NDA1QM+JJIFXOr6ea
         Y+eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697187753; x=1697792553;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EitIIr0VXZPrROTEdWmf6yr6Gf534q1TtiPqr2MAdms=;
        b=TYykRlFQcLpBPKHVpvT5nUu4oSa5HJPHcUb67w3a+tdAFyu1ZL1ePtsYquwJgOFoug
         9b7KyTK3ys12Y5OrmczjJlIy365+YFo4RfQJSH1u8axf1WnUws26cLJHA+OUCkdPG4d2
         V/hAcytCN3CuZeK79knveKTuFINtoHgK9EHaTh/lB25IdHKrzGqSTaY9bA3VBNEwj/IE
         bgJT6vE70AT4fnrrjYxy8nyjZgv0LeXKSPBUUXyvaFQLCyjiNXAfmJS9Qm/TJMtr+OsY
         1YzEdTRfY9yREJ4d5isWi8GocsHU/EGcqe4dNOHWACrpNHmlREFsUmx9zZiN480bIri4
         3yVw==
X-Gm-Message-State: AOJu0Yy5+oCnINqOE03EhMXahiJYjSS9qhYe0Q65UiG1+q5HIdk5Ast/
	fw0SGATqZ8VWk19CwlDyqdy4Pg==
X-Google-Smtp-Source: AGHT+IFxQE0qP/giysqEOTM31qj+xVscrqwLDA5oxLN8m7e4fQRA0KQWqxJw1XjX9TXSjwe3miKOlA==
X-Received: by 2002:a7b:c394:0:b0:406:51a0:17fd with SMTP id s20-20020a7bc394000000b0040651a017fdmr21825469wmj.18.1697187752956;
        Fri, 13 Oct 2023 02:02:32 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id p16-20020a1c7410000000b0040586360a36sm1943484wmc.17.2023.10.13.02.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 02:02:32 -0700 (PDT)
Date: Fri, 13 Oct 2023 12:02:30 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Calvince Otieno <calvncce@gmail.com>
Cc: outreachy@lists.linux.dev, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Luke Koch <lu.ale.koch@gmail.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Simon Horman <horms@kernel.org>, linux-staging@lists.linux.dev
Subject: Re: [PATCH] staging: wlan-ng: remove unused functions
Message-ID: <62778e4d-cc2e-4310-b334-52b54cfe7e79@kadam.mountain>
References: <ZSjpQlUcyOoYv4Yh@lab-ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSjpQlUcyOoYv4Yh@lab-ubuntu>

On Fri, Oct 13, 2023 at 09:52:50AM +0300, Calvince Otieno wrote:
> The following functions were defined in the prism2mgmt.h file but neither
> declared nor used anywhere. It is recommended that they be removed.
> 
> 	- void prism2mgmt_get_grpaddr(u32 did, struct p80211pstrd *pstr,
> 				      struct hfa384x *priv);
> 	- int prism2mgmt_set_grpaddr(u32 did,
> 		                   u8 *prism2buf, struct p80211pstrd *pstr,
> 	                           struct hfa384x *priv);
> 	- int prism2mgmt_get_grpaddr_index(u32 did);
> 

Could you look up when the functions were deleted and add that
information to the commit message?

    These functions were removed five years ago in commit 123412341234
    ("delete functions").

regards,
dan carpenter
