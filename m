Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A31E620
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 06:30:51 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id j13so7466886pjd.1
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 23:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679121050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V9Bi+9cn/0sT0wq4rCAovD+b91kSHEB/1tx1V2z9C4E=;
        b=NdxNxDVELuuQnacHX3AVfs1J+EUt8kVsnf/0/xM0EoNRK2k6A0VrU9h2/8ykFg7o0C
         wr8eCVD9AQFjJnA3WD+c5YODpd8qm7JcJ5MUzMrJnnIL36PXuadOszu2A0p+yihrtZ9G
         qG2wWKhMZrcmfWWU61PnaiCPBd1DRgHL3mLnPHuYvAlVD11QlJihIeMsEd3PLgz11fa3
         QZnda0oFYDA+T3LYWzx0h/YOs1U+ETy/lf4PX1fxTNkCnsKrcgchrUCO/jGFMkbohlaL
         LkR5MELyIDwEfWiaoCYaGuUwdiP3sG69TsIYax8NGestzXhF/2uSq0hZ8DGjIAtqXg36
         8bRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679121050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9Bi+9cn/0sT0wq4rCAovD+b91kSHEB/1tx1V2z9C4E=;
        b=KyBwjgNUII4D7jTYIh7itBFbUjME7lu3+CTwjdjmz7Yk7savg5ncpJYZrp+mJSZKzO
         CqybM0qDdi4mFRt5cRaKP1FbrCm8fg24gcxfVZdZu310EKNGD6h8Jcy/vK0DbhVjnu2v
         qfVKOxG4+T6VJY7FJzqFHsM981zLARq6k/3qAtdPq7BoyC0y4CTycBjc+HvKfX6Sc5DR
         UWzIScID6uhKrBKwsaUYnhkUafvFWnG0pNxJqus6l784Gx8DC8ixNL48OQdIT6kKeK0d
         ++V7mklV82nhR3RjiUA0E9SLkfVbhn+yxZsmB6Oz8wbcxQhF7qYHNDoPbLRKdojUD5JU
         kUjQ==
X-Gm-Message-State: AO0yUKVt27Y4vRz4kS60CYFhcv37yiymosn7c8te3SU0wF2U+N7K4iLe
	sdhA65EJ90wBh10tackvwF0=
X-Google-Smtp-Source: AK7set8OLc1HrZZqzXCOZ+/BPYG7nvJkOBD9EirmIHc7NxbZfV5UdadbIv3Wkq1ozTmxa689ir9OxA==
X-Received: by 2002:a17:902:e2d2:b0:1a1:b748:f33f with SMTP id l18-20020a170902e2d200b001a1b748f33fmr836004plc.69.1679121050611;
        Fri, 17 Mar 2023 23:30:50 -0700 (PDT)
Received: from sumitra.com ([117.245.170.249])
        by smtp.gmail.com with ESMTPSA id b14-20020a63eb4e000000b004fb5f4bf585sm2483265pgk.78.2023.03.17.23.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 23:30:49 -0700 (PDT)
Date: Fri, 17 Mar 2023 23:30:45 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEBIES ACCESS] Sumitra Sharma
Message-ID: <20230318063045.GA4434@sumitra.com>
References: <20230317175007.GA3275@sumitra.com>
 <ZBUQh7FJptcUEPy0@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBUQh7FJptcUEPy0@aschofie-mobl2>

On Fri, Mar 17, 2023 at 06:14:47PM -0700, Alison Schofield wrote:
> On Fri, Mar 17, 2023 at 10:50:07AM -0700, Sumitra Sharma wrote:
> > Hi Alison,
> > 
> > The outreachyfirstpatch document directly links the ".rst" files at many places under different sections. And as Fabio says that .rst files are source files and are only meant to be used for making changes and not to consult. Therefore,  I would like to propose the idea of changing the
> > links of the .rst source files to their respective .html/.pdf files.
> 
> Hi Sumitra, Is you Kernel Newbies Account Name "Sumitra Sharma" with
> a space?  I didn't think they allowed spaces. Please confirm. 
> Thanks!
>

Hi Alison,

Sorry it is "SumitraSharma" without a space.

Regards,

Sumitra

> 
> 
>
