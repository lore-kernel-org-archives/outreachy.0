Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829FF1C05
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 07:36:02 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id x20-20020a17090a8a9400b00233ba727724so10767663pjn.1
        for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 23:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678606561;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HbgCBRaxxjpV2H3g7ozNZM54LqmQwEk8G65zuDKgwwA=;
        b=HVJXHoYXPlXKdnTPJvG3ZlilxI/OWkaPbXoqSdk1YCA0YjRvIs9mD2yrQJF1O+rlt0
         a04cAZDDLTXi888ZjM+iVgwZN7emdOJx6SQvABWpgQ6YACvO6zkjZ8+BIhEhgkD517mm
         xIyjk27TNMgmlKzEdcJ/3fWWlIXGhEa5FJPL79AXN1f1b4ikeImIW8ZhhS+s5Bkx50v6
         A//L8Hr8QY/jftXSaaELGENAuoqie6mR0piJdNZ+E9kUxPh8YZvHxl/ggIqK4MErCdZl
         6MRjrDcYJiQvZlqiQeSLqZjB1urUVLzcTC2fLm4aGNZIsYMFgVjNLZo568W7bEDmYL12
         g5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678606561;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HbgCBRaxxjpV2H3g7ozNZM54LqmQwEk8G65zuDKgwwA=;
        b=SDnyX2z78/+55n2vl9ZepRa4Xk9XQfoTEnEVae2bA5aCHSUzkt9pEiMKSPNEmP/0kN
         yqdwm63mNuDXTlCixLto+fMTEUY3gvbL7eYrmU3cyQB7jepYOoUNgvUxfZ5puOA68kY3
         kOW0XKbl/k4TEw4AaqsbIRrdgAbTrqypiTBznC1lJ4OMqUvo5k1nYuJFAVyKqqQDqBkB
         Ipb4NXpfL1HxO7Md6Az88jXa4MDhE16hTNkxMnIMtd1sOlF/z6tVk96tn+PaR8+ZUEoE
         ppqDKQDgkI1zYr7P06Vb0bgZjLF+27Z21UscpV5uslZb3tBNiJFe6PfJ/q65IvqpeJOS
         sOuw==
X-Gm-Message-State: AO0yUKWtQjN6UL+uZ9hm5fLiLun8pF6/537z9MftGai0krZej4Em4D2L
	TdhghwhIMW0fQQ+de0v97uYKIb0jePjUcQ==
X-Google-Smtp-Source: AK7set+9uaH+RN8TmtUwoanpWdkTALs1G20HvKYXB/bv627p5rhuH6O4g8EUVzOfpUNaRnpWLFnE3g==
X-Received: by 2002:a17:90a:305:b0:233:d3ac:5dc2 with SMTP id 5-20020a17090a030500b00233d3ac5dc2mr32011831pje.18.1678606561609;
        Sat, 11 Mar 2023 23:36:01 -0800 (PST)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id v13-20020a17090a4ecd00b0023b49c42c0csm1139680pjl.46.2023.03.11.23.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 23:36:01 -0800 (PST)
Date: Sat, 11 Mar 2023 23:35:58 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <20230312073558.GI14247@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303120807130.2865@hadrien>

Hi julia

I was referring to the reply you sent in this thread and asking to quote the most relevant information in the mails so that people on the list can know what is being discussed. And I will take care of this in my upcoming mails.

Thanks and regards

Sumitra

