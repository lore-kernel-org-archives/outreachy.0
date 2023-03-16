Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75215323E
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 13:17:01 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id o6-20020a17090a9f8600b0023f32869993so1420065pjp.1
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 06:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678972621;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MATIvmmO+WPsfUp8IQH9WKIDla1yCTE7HLj+feFI5co=;
        b=l+V7PUTCbclmH4rq7aWUEvX0WQiO2/6Gr2lSGIAz+VbsiG4GZlBbk8e/Ej59tqekOT
         vBlEWiPru2kWR2QC2Fasd+uTiLBAox4xWQJVMI+Fd5siun4+hZDyVIKJnIXPK/P8ekln
         GL7XcYS34yXWt9p1WgtEZrkdsv9QNuOQaiEipMvsVXp5fMbrSXuaik2J4xOZcuxEVf1Q
         MOl7HXtn5VQcb2RXHiy6UK+Vgu5jx8+wiUroG/nx9LopQhx5wel3ZBEOcUBFU3ayg/+s
         n0s56AAA/UqvBRt3BWUymSTZtkXvhmvYSqSohtbc+cc4EMQHy00JD0KlBcSVuSKKMRWC
         3fIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678972621;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MATIvmmO+WPsfUp8IQH9WKIDla1yCTE7HLj+feFI5co=;
        b=wIe+kQlAbT5acasvO+xGM4m88DeBQ37dB3Ch+3essj6cX2fOMvvoWITv0bjpHYwrAz
         WPW2tGPU3/4nL4oS/lN1JRwCS0WaGT3ohR0138IiowrdBx1ry8xAvcdKkmolXYJ/vmtv
         ePWyY1HCksZGT5krb/sbpu6EirZXu+AnAPp4aCz1YCAobiO3YmqeZq/wvEO6gaydB2MT
         jEhxHEnXAzzcsnJtXZAMpgcu4LzdeeE+wMLREPwT+kVc12HRdhFmnLWBhLRUix2czMGp
         dChbOjmIA/oVxSV4hYP2+CsAALK0d11RNgaKt/Z4DEgl56ejnRfssvdIKpHHFSwdZQ7X
         otkA==
X-Gm-Message-State: AO0yUKVXlqrt9DJ8bc6c0XPPlXLoq3knBNr6in5wZ1rBQFnhbGhLVgYG
	Dsj7DIwZ9hysjAML7+7W+VVjZlWYTcv4PA==
X-Google-Smtp-Source: AK7set9sq6Y9R8vWaSwfJME7rIo7Fy02jgp0sScmEMmD0uhTGT98ibrnyWjVwgN/mD7dYLgshImqgA==
X-Received: by 2002:a17:903:807:b0:19e:73aa:6cbe with SMTP id kr7-20020a170903080700b0019e73aa6cbemr3118321plb.13.1678972620798;
        Thu, 16 Mar 2023 06:17:00 -0700 (PDT)
Received: from sumitra.com ([117.245.254.247])
        by smtp.gmail.com with ESMTPSA id u3-20020a170903124300b001992fc0a8eesm3311343plh.174.2023.03.16.06.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 06:17:00 -0700 (PDT)
Date: Thu, 16 Mar 2023 06:16:56 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: alison.schofield@intel.com
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Message-ID: <20230316131656.GB47401@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBEIAKymniRkamjr@aschofie-mobl2>

On Tue, Mar 14, 2023 at 04:49:20PM -0700, Alison Schofield wrote:
> Hi Applicants,
> 
> We want to support you finding cleanups. Today I spent some time
> looking through staging and am working up a small todo list that
> may be useful.
> 
> I posted one such cleanup to Menna because I saw them submit a
> couple of attempts at a first patches.
> 
> I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> their first patches. Keep going! Ask for help finding your second
> patch if needed.
> 

Hi Alison,

My first patch is accepted. I will appreciate if you could help me to find a
second patch.
 
Regards,

Sumitra

> Anyone else who wants help in finding their first patch, please reach
> out. I imagine their are some folks exploring here, that I haven't
> met on the list yet. 
> 
> Finally, it seems we won't be holding to the traditional 10 cleanup
> patch requirement this round! Please continue your efforts and I'll
> redirect you towards projects after a 'few' cleanup patches are
> accepted into staging.
> Thanks,
> Alison
> 
> 
> 
