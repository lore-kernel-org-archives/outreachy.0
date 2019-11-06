X-GM-THRID: 6755697010299371520
X-Received: by 2002:a50:d7c9:: with SMTP id m9mr2422046edj.93.1573043849805;
        Wed, 06 Nov 2019 04:37:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1956:: with SMTP id b22ls496153eje.15.gmail; Wed, 06
 Nov 2019 04:37:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqyx1vi/UnwspNOpmarbBkjcLbSHE0RsYGNBE1CGXvljJNHk/Ex58qbUDzNnmodMHxDHzv1z
X-Received: by 2002:a17:906:1dc4:: with SMTP id v4mr33824762ejh.248.1573043848927;
        Wed, 06 Nov 2019 04:37:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573043848; cv=none;
        d=google.com; s=arc-20160816;
        b=CLUGLMq9W6kLQo7zqRkKiG0Tp0nE5FdG2W8LYyaJU0Xh2ewgTdnle4Nuwx+9Mo5kDZ
         2yfSXEsm3sPqaGUZ6eYg8nIXwye+DCcKpULESvWVJpOkDMtMAXgeDQE7aROKRyX7sbBq
         wzsl0uYbyrshm5MxtzNL30Qw3XJe/HhortYqZwLUk3XdpOfQDeI+9LIT8pdDRC8+BRmA
         9vjnx9dacN+yVb+aspKfZsmiWORw3Xs4f53Gf+Dnaqlr50BJEa4kNqM5DZLH0elCsMFs
         FSmcGjOPac4iWJGE16c5XE9xYzOdpqlnwrg+MUZ6NFKmsbsWo4FnjfgAm+iq2lxGC2fc
         NerA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=HdO0vxSUsn3KX27t2Vq22c10lO2HmbYgNheJpMPyAWM=;
        b=dqFNfiQtlHtlGrXj9aLyewTuvHQAgD085TO/f4o4zW240AirxhkPHZtF09JKd4E+ZC
         ubyLKOHn49ASFFhXR4tAU2ZGqraO6OI8tK3AHxA2ngfAPhSUyNoJh3qJtwcrgU6vqlPJ
         JSLPUWHmc4eUasRprBIqLWdP21Z6DSCHKXxjXF1MsDwe3LWti+rPUzCJnZV7bjqWvqBW
         JoOHTFOumw67AOLi9oSJuGS2yg+m7DYtr/Q5yL8NiGtppFWcWE5BOrtwMiuZ32hip7c7
         HeTDn8qEsoEaW0avYEGpmvGJ5fvbTAiafxZhm6FdrdlNHqb/zlq7RFPJ6bgP4hB9K41/
         FRMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
Return-Path: <rjw@rjwysocki.net>
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl. [79.96.170.134])
        by gmr-mx.google.com with ESMTPS id c28si1335154eda.4.2019.11.06.04.37.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 06 Nov 2019 04:37:28 -0800 (PST)
Received-SPF: pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) client-ip=79.96.170.134;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
Return-Path: <rjw@rjwysocki.net>
Received: from 79.184.254.83.ipv4.supernova.orange.pl (79.184.254.83) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id 302e3675ce793f7a; Wed, 6 Nov 2019 13:37:27 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, srinivas.pandruvada@linux.intel.com, lenb@kernel.org, viresh.kumar@linaro.org, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] cpufreq: intel_pstate: Fix sparse plain int pointer
Date: Wed, 06 Nov 2019 13:37:27 +0100
Message-ID: <1650009.YP25ckTgOY@kreacher>
In-Reply-To: <20191105055427.11943-1-jamal.k.shareef@gmail.com>
References: <20191105055427.11943-1-jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, November 5, 2019 6:54:27 AM CET Jamal Shareef wrote:
> Patch fixes sparse warning: Using plain integer as NULL pointer.
> Replaces assignment of 0 to pointer with NULL assignment.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/cpufreq/intel_pstate.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
> index 53a51c169451..cfcf34e04c3d 100644
> --- a/drivers/cpufreq/intel_pstate.c
> +++ b/drivers/cpufreq/intel_pstate.c
> @@ -2664,21 +2664,21 @@ enum {
>  
>  /* Hardware vendor-specific info that has its own power management modes */
>  static struct acpi_platform_list plat_info[] __initdata = {
> -	{"HP    ", "ProLiant", 0, ACPI_SIG_FADT, all_versions, 0, PSS},
> -	{"ORACLE", "X4-2    ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4-2L   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4-2B   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X3-2    ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X3-2L   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X3-2B   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4470M2 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4270M3 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4270M2 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4170M2 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4170 M3", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X4275 M3", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "X6-2    ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> -	{"ORACLE", "Sudbury ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
> +	{"HP    ", "ProLiant", 0, ACPI_SIG_FADT, all_versions, NULL, PSS},
> +	{"ORACLE", "X4-2    ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4-2L   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4-2B   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X3-2    ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X3-2L   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X3-2B   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4470M2 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4270M3 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4270M2 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4170M2 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4170 M3", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X4275 M3", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "X6-2    ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
> +	{"ORACLE", "Sudbury ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
>  	{ } /* End */
>  };
>  
> 

Applying as 5.5 material, thanks!





