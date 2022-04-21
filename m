Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2801876
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 07:50:30 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id u5so1130467pjr.5
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 00:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oicvIY0y5wccZhVe6ivP5Xo5+MG/BvSEb+nQiz7dyjQ=;
        b=V1Xglz2oLjrxpQkc5GBIiz3GzvJqg4IKyNDPTkuaNdo4ZTsHidcRaaXp8v6ztS2vFU
         dSwb+J/F2qw0xowspA0tDT3ckvYlt7X3LUJLAygGypOAgcHsClWlcELVg35ampaeDLe7
         QBmXh0Mg72WN948teJpSUp8xRL2vLrujoQcXPIjSMVx7iFmgJuss3pL3Szc6klaE6C1N
         uxvshLcSU78Lhtd9JFOt9D19h9mn0HS3AyPat1jTPOIy3EVf1gpE0O9jmeHj8BpGXwKr
         HrqOV42rLg7Zd0a05S2/z1ztPvnuIoNx0OFT8sud0d2vLiCN1rZS5skYqa/RhlJRqatY
         aOKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oicvIY0y5wccZhVe6ivP5Xo5+MG/BvSEb+nQiz7dyjQ=;
        b=U3q/KUERJ8RxaBfAF+VJnWI3LDDlFy1jnXsqi4v6lx//VfffX44ILM8vQdwd2fzfuu
         3thYe5La//3ZwjBvMdJxMMkSvp7J5TE9ksZGW3JIwOsfkoTOSgLl+yqd/QIXJwyOTb4q
         cNG3G8EW0UF18e9s6MPZKg8m19Hco5HE6hO+AISBV7oSwcTvQjI62/aAAJDKopxk6j4i
         iGs1KPV/u1Q9FQgwJGuoPgAQey9FMs1ZV25lAyvb2Ag9uwaBewRuoRHaUkeQQEypBmOa
         ssZYpMr3OCE+Sfva2ril9dUC8NfJDIAWOdhcI0y0qBhAKVhbDz8J8pkVHM10BVVm9yQ4
         kU5Q==
X-Gm-Message-State: AOAM532mKgEqhNjPcp4J9yCJFYU9ECQWdSZDfJLcMAnJqGE/Op0Zg0Xq
	qcBV8MnX8IbPyEyyUQVlvJY=
X-Google-Smtp-Source: ABdhPJwPwrHN/kgtMeCVvBZbTGWh+qmRSFtqroD5tz6rMKKos9VyqUt8UyA/ufcoacKmw/+uSOTJww==
X-Received: by 2002:a17:902:b193:b0:158:c040:5cf8 with SMTP id s19-20020a170902b19300b00158c0405cf8mr24676272plr.146.1650527429609;
        Thu, 21 Apr 2022 00:50:29 -0700 (PDT)
Received: from [192.168.43.80] (subs03-180-214-233-15.three.co.id. [180.214.233.15])
        by smtp.gmail.com with ESMTPSA id o5-20020a62f905000000b0050b5b5efa47sm799738pfh.191.2022.04.21.00.50.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 00:50:28 -0700 (PDT)
Message-ID: <2f4c72d2-4669-4217-f322-9d4f34c3053e@gmail.com>
Date: Thu, 21 Apr 2022 14:50:24 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 0/2] Docs: Update information at changes.rst
Content-Language: en-US
To: Jonathan Corbet <corbet@lwn.net>,
 Bruno Moreira-Guedes <codeagain@codeagain.dev>
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 outreachy@lists.linux.dev, Bruno's Patch Watchbox <patch-reply@codeagain.dev>
References: <cover.1650376049.git.codeagain@codeagain.dev>
 <8735i83xo1.fsf@meer.lwn.net> <20220420172731.ru7kfrdkmprybtu7@AN5Bruno>
 <878rrz30d9.fsf@meer.lwn.net>
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <878rrz30d9.fsf@meer.lwn.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/21/22 04:34, Jonathan Corbet wrote:
>> Thanks, Jon! I have also been thinking whether this filename
>> ('changes.rst') is a good description of the file contents. Do you think
>> renaming it to something like 'requirements.rst' and updating its
>> references would be a good patch?
> 
> It's best not to rename things unnecessarily, especially relatively
> well-known files that a lot of people expect to find in a specific
> place.  We've done a lot of renaming over the last few years, but this
> is one I might let slide for now.
> 

Did you mean the rename will be benefical?

-- 
An old man doll... just what I always wanted! - Clara
