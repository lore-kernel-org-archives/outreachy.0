Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842553D79
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 15:44:33 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id b13so8585268pfv.0
        for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 08:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=793ANMwrMyKIqDI0hl8AWsxNk7hK0Gsc9Q6xm/2ekKY=;
        b=DUnzCisEbvxOwACfOVgrlLViZTi81/Exq20MHd/RVQ1CnvNFeTxWTn8ygjm0QcobHR
         f5TiupCv5nWtc2xc8+S3ys/5E3IY2Tr6owLas33YQEYQQD+tS+NDnfiNYkaE1ytWmuBL
         oS5Vpd49wLzRL4DRDz70wbwPya22HOIVjLrm0UIunOvSWukDMpYOcsLTMkQh3y0Zw6ol
         UP58jGFeqC1orh0OKiphYwY5QdRF8cEHYc6PtP22ilzp7XbG/z4iC2YBEPzcftc/V+99
         hIU9iS0lGbCnettyIdvqmlWWqxnakkQKibiOBFbWSVrc7rhXnRQGeXni/we+9XTCdT2x
         nuLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=793ANMwrMyKIqDI0hl8AWsxNk7hK0Gsc9Q6xm/2ekKY=;
        b=rT+Mmr79+5/dCOjhM5Jy1rH9SVk23k7IqFQjGPX1USQyk7GOT37WTNYJ1pTSFV1ftR
         k/DnzuGbT8/iyX9fev5SRrpkV1Jh2oPHLgWe6HajFxK7Fk+fO7ZNwwWScJaFDnno/5ua
         I/ZM3rvsQQdeex7MH/WFZwOKVVnP/lkmj/SmOtHcaUHkgRbdW0S40f3OmwZragrfanKF
         8kuywYBKuu9RklZGym2/W5+FDd882Z4qGr51gcg+lxbT2GXesXKmsGMtN44Z9cws+LM4
         rD3s+xSy+e/bXiJmg2TYiMhv/tMZxjrEdAC8ok6YSkBGBDJXuiSjnSqHlrzzwMVMaiSc
         7Bww==
X-Gm-Message-State: AOAM531eAuk3DoB+bz75KpFn1gDWJ8CBcFAUkl9Qe9JgVgDsyar3cbZK
	w7JM8aWng/Ds9iRStajyz0+VSvSqtJeQMvPK3/8=
X-Google-Smtp-Source: ABdhPJwQ9XMTd4TVRErvJ0Ru4dFRlFFabBR+/l0FlJFPhT452GbXnTLVuhaE2RaH+QssR9+vP8WxGYCUgZ1aIH6KhXU=
X-Received: by 2002:a63:8c5a:0:b0:387:6367:c08a with SMTP id
 q26-20020a638c5a000000b003876367c08amr7143621pgn.155.1648395869340; Sun, 27
 Mar 2022 08:44:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <czc1Q3u3JwStzJdk-IfMTM0FJ6qL6VVwdARgZba9HUAUqTICywXm1VvrqOB4KhqeJ0n6sfrmL173Bgjyed46_BZ6u2RfuejW1SZQLcFd1jc=@protonmail.com>
 <20220327043307.GB1158431@alison-desk>
In-Reply-To: <20220327043307.GB1158431@alison-desk>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Sun, 27 Mar 2022 08:44:18 -0700
Message-ID: <CAGe6so_ACf0ELjwF1N-Ht4zYzGJzjbtZqcWi2um6Y_Pw7On7rA@mail.gmail.com>
Subject: Re: Outreachy Contributor
To: Alison Schofield <alison.schofield@intel.com>
Cc: Rebecca Mckeever <rebecca.mckeever@protonmail.com>, 
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 26, 2022 at 9:30 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Sun, Mar 27, 2022 at 02:20:33AM +0000, Rebecca Mckeever wrote:
> > Hello Everyone,
> >
> > My name is Rebecca Mckeever, and I am a senior Computer Science student=
 and an Outreachy May 2022 applicant. I am interested in contributing to on=
e of the three Linux kernel projects, but I haven't yet decided which one. =
I am new to open source contributions, but I am very interested in operatin=
g system development. I am taking the Operating Systems 2 course at my scho=
ol this term, so I expect to expand my knowledge during the contribution pe=
riod. I have a lot of experience with C/C++, some experience with bash, and=
 I am familiar with basic Operating Systems concepts. I am familiar with th=
e Continuous Integration process and have used git/GitHub extensively for p=
ersonal and class projects. I am looking forward to working with this commu=
nity.
> >
>
> Welcome to the Outreachy Linux Kernel Community!
>
> BTW - Applicants are welcome to explore (and apply to) as many projects a=
s
> they wish by taking on starter tasks that the mentors define once the
> cleanup patches are completed.
>

Welcome Rebecca!.
