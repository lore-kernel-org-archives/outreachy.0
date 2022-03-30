Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3237C
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 11:46:17 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id q5so27284435ljb.11
        for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 04:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GmMYvHLw5HY3VV8EUhGtyfqZA5iv076WVaArPTO8ev0=;
        b=GMPEFxM+2mRxgogAYLzsn5SfQi4ubSWlKES2uNSggKDzc8i/5EDkiFiRrKvOj1v26F
         f3nNdz6JVPd5e+mP1w12dNw2w2ZfFj1YGYNDCRxkqZK3GDeANvxsC25N6CCR3gvWLJPD
         0ObnvcC7qrisoNBiQeAbCGywpePD7WZZHlMrG6AICiUXD6uQSsiw5qgyj3KniEk0vF7x
         0PNy+G9QZ5qZNa1bxkbXZlhkhhgdyXG/E9ofsDJgDO0XuhYq7X1moe7MrF3LxQIakXmG
         b9yGOhtz11W6jlU6yWtbOAfOMRMT3xjy+uWZmyBbGLD1qNYNpkS4i5snFbcxyIGSM+Wm
         VTjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GmMYvHLw5HY3VV8EUhGtyfqZA5iv076WVaArPTO8ev0=;
        b=aB3ogTrAvp6a74ekpH5T4V1P/5a6NUzdOH3a4BSIg4JWdXFegpAZpHkp0PA4wBo6JI
         FFbVwLYf8ZohMKZh4WEtB7mvrYXCZ8Djd+IdYNZIOSfa0tHfjbUx4RKD/KsQIKLiqry+
         yAg+0L08bx9kY8Qgdjd2xlcHPDLC6iF9+R9C55DT4e7DBpMrkcU7AI/BwElszoDKPb0P
         lhCjKn+3vC4Ef6/R3psshUvDf+UDJAfsdita+6tOFtA7Bh3wXZuWKg12ynV6DTAteK47
         8a203bI0V0qW+kBhr9c+W29HOhhQUwcaW/SoZK7oK2PJMNwADo0npaubEvjih865TIWO
         Q2MQ==
X-Gm-Message-State: AOAM532R6dL1BcyW07s4tlUt4tZycgUNtbyaIii28n4DAEP4jFJx5iK8
	TyXi7oj3h/J0NaY3PpiYIszXRZrBHxRNtaIpuAAnIyD3oyPP9TWh
X-Google-Smtp-Source: ABdhPJykGSbnejnGq1ciwMhrDT9lfL0V5pdLJD2q0XHKOgwnjh4yTiHBZszMKd+O7PY8RpZK7Lpmx8YHX8KOoAJEaww=
X-Received: by 2002:a2e:b179:0:b0:24a:d3da:8691 with SMTP id
 a25-20020a2eb179000000b0024ad3da8691mr6244664ljm.392.1648640775281; Wed, 30
 Mar 2022 04:46:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAL1a2snCAKCbAYh4jbtFHRK_nyCv8oaEuC39D3bQSPbjAx+oMw@mail.gmail.com>
In-Reply-To: <CAL1a2snCAKCbAYh4jbtFHRK_nyCv8oaEuC39D3bQSPbjAx+oMw@mail.gmail.com>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Wed, 30 Mar 2022 07:46:04 -0400
Message-ID: <CAMWRUK4y7KzUM0TUs6zrANWu2JT-MG+VRu+_UsZ9ezuyKZz7Wg@mail.gmail.com>
Subject: Re: Build error
To: Formasit Fokunang <formasitf@gmail.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Formasit,

I also had this problem, and Stefano on IRC told me to install pahole,
which is part of the dwarves package. So you should install dwarves
package. You will also get an error about the zstd package after you
fix this one, so you should install the zstd package as well. These
packages were not listed in the tutorial at
https://kernelnewbies.org/OutreachyfirstpatchSetup, so I just updated
the tutorial to include them.

On Wed, Mar 30, 2022 at 7:38 AM Formasit Fokunang <formasitf@gmail.com> wrote:
>
> Hello,
> Thanks to Mike and Rebecca I was able to solve the problem in the
> ./include/linux/elfnote.h .and some others that came up by editing the
> scripts/config file as suggested .but on building again I have this
> error. I searched and I found it concerned something concerning
> Panhole and my allocated disk space . I added the disk space  but it
> still didn't work.
> Thanks to anyone who can help with an idea
>
> FAILED: load BTF from vmlinux: No such file or directory
> make: *** [Makefile:1155: vmlinux] Error 255
> make: *** Deleting file 'vmlinux'
>


-- 

Sevinj.Aghayeva
