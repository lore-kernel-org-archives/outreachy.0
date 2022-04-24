Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05477A
	for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 17:39:42 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id k14so11575273pga.0
        for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 10:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HR5tz53iIuNf13OdJyHnN0TVnfrhlU1o8jqUnHZ4Duk=;
        b=RCVB1q+gqIDU4UjYQwEenJznDYoL+/djn1vY8mqOjt7Gxg4TceGasjRcqtXm96arkH
         7dHvxpIxwfNlq2NROYHU7QTQ+quvDn0nq3aReIxpHrUkuyQVZIJ/tJS1m+MFUD45g9Pr
         t7ZYWpyvYx3fX5LewmzU2Gef1KyNgWx2786q7PlXTA+DMArey3scGNRI1ZRmZJUd3rHf
         lhK/ZQhblY2tLqfLz7/3BdF9lq782KHMidHqnPHAh+B0TPu7wqFAf34qrbOCtpD4suH6
         4JkMVLSdy98dQYhucBk3we3azfkEHY/xBCO7JfEamxBP1PnpINzTZu8UrS/Jyu7IFnVE
         5TeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HR5tz53iIuNf13OdJyHnN0TVnfrhlU1o8jqUnHZ4Duk=;
        b=IJpxsZPUBaDiYO/amOnDD5lJ89Pw/bK/TEczWWWqd6R/VtX2f6F7W6JtdRr2RQ5Erw
         auRwPC6g+GOZUgu5h86BA397mIAIxWj8oTTz1AFFbNczaOwbfb+hZIbnoMDM1ScDBSlN
         Q1H92jPoQGFVMO69Fb+D7UN4/RDsFGav3lJ5DGAVeEwH+4cwo22riYzOBp4PMjnO7dXu
         UxqzioTxHEu6QDz3MzPLn6TYCRWq0Vd5KKypGJSx19gFnRI/Pi9zABS9na/V0pNQ+xae
         sYfWEJ4QVFQVXIJEvIHzErtKxIjnl0LQarmgXQPH1VG0ZWiaEKZTZZxkNaoyEAfrgOFR
         OSdA==
X-Gm-Message-State: AOAM532Zpu56e4JOVXGnw9NGQhkg0KU6Jzl+NcsS2hkxof0oj5uTbdQO
	dCpenoNdO5gTsHzBZYHLeQe5VQ==
X-Google-Smtp-Source: ABdhPJz5M/aJWVhsZbfj+++2DkYSQyxQNXrpT0sS9/ZpquXOxBVBeR2vdYCghseFlvwOljWOzYV9Eg==
X-Received: by 2002:a63:1014:0:b0:399:3710:f204 with SMTP id f20-20020a631014000000b003993710f204mr12068957pgl.424.1650821982220;
        Sun, 24 Apr 2022 10:39:42 -0700 (PDT)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
        by smtp.gmail.com with ESMTPSA id h132-20020a62838a000000b0050d3d6ad020sm1285399pfe.205.2022.04.24.10.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 10:39:41 -0700 (PDT)
Date: Sun, 24 Apr 2022 10:39:39 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
 roopa.prabhu@gmail.com, jdenham@redhat.com, sbrivio@redhat.com
Subject: Re: [PATCH net-next v2 2/2] net: vxlan: vxlan_core.c: Add extack
 support to vxlan_fdb_delete
Message-ID: <20220424103939.47313976@hermes.local>
In-Reply-To: <22f5fb1d5e592c0deefb246225f66908947a613b.1650754231.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650754228.git.eng.alaamohamedsoliman.am@gmail.com>
	<22f5fb1d5e592c0deefb246225f66908947a613b.1650754231.git.eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 24 Apr 2022 00:54:08 +0200
Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com> wrote:

> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> +			return -EINVAL;

why not break the line after "NL_SET_ERR_MSG(extack,"  so it is no so long?
