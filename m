Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6957B
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 02:44:02 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id z20so19010154plb.10
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 19:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wu5k4BHJLU/PSDEQ6PpDIZQzSaCrmOfUnzDhRDUCLVg=;
        b=JVE2+nrFLbge8D9nnsY47as1GkEM/I8lsYjygX0ffyRbTudMorPMjQXZUf8KEw6E1/
         JJDUiIxDsNX2S/L3dOI8kX1jR05g884oZuomUul2s0j4WCGzRSIUcjblD2YvONkevPsT
         7DWPwRSjILT9nLGn5MAz3yiRm2wfpE6t4lkZZUwpKZ7GAFKoryoWg6iD89Dy061C8Y9Y
         o0XewtEu63id3bAJtC8zQuU28E4eHIYFny55dCMAmE4OxiZBwyMst1qVAH9A0V3t+ve8
         4OsKZ0B1U84lh+YuS+BREP68X4Ma8ZecD+v5iH76wgbtfXGbNLoGXkNaypKYw7P9tvd0
         tYBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wu5k4BHJLU/PSDEQ6PpDIZQzSaCrmOfUnzDhRDUCLVg=;
        b=2ujFtAA8osQpYI3D/bowtzo1/p3QL51NrS+LUWdBPVMLhVaHfYcZTXcKcNQ2aQWTxY
         0sS0El17TC/QwzxEk3KB3wTlLUVwDocxAgpr6F6zaNch6s879iPDoM6xc+LVs36hF4lH
         L9JqzWJwSf0YdN3BGdjIP8EY+NhLxEe502HEwDSE4gY+FMSFR3B0q3V1DVT6jVPvUzPb
         GYyIoqETeZezAmjuJe+blY6by+BQI6BQtENtU6Iis8nA+beSyN9RGtG/EzCGvGvCKwYS
         AVX3IeU45jlaPuubQNUFLD8LePN2KkKans5VwfWgqMLJ74Uti9umUQjokjqVvEkY/X0U
         UHCg==
X-Gm-Message-State: ACrzQf1llib3aKiRvxMCC84GTrkjz8OWl2EXi4zG2XYmhm+VX83s9M+q
	lED/r67t6hre9VgkvuN+b/9njkxZZAWeaQ==
X-Google-Smtp-Source: AMsMyM7h606f0nngXiu1jFRXauJkWTU4Bs7j2YSSgzS1qDpt1ljdn6yDKMYIBOpgPP1RpbapaVnZsQ==
X-Received: by 2002:a17:902:f693:b0:17f:6974:cf7f with SMTP id l19-20020a170902f69300b0017f6974cf7fmr11184004plg.60.1666233842225;
        Wed, 19 Oct 2022 19:44:02 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id r11-20020a170902be0b00b00179e1f08634sm11300823pls.222.2022.10.19.19.44.01
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 19:44:01 -0700 (PDT)
Date: Wed, 19 Oct 2022 19:43:59 -0700
From: Emily Peri <eperi1024@gmail.com>
To: outreachy@lists.linux.dev
Subject: Weird formatting in rtl8723bs driver code?
Message-ID: <Y1C179JmHDc3eI9G@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I'm working on cleaning up the rtl8723bs driver with checkpatch, but I
noticed that some of the variable declarations have differnt amounts of
whitespace, like this:

        struct cmd_obj  *ph2c;
        struct sitesurvey_parm  *psurveyPara;
        struct cmd_priv                                 *pcmdpriv = &padapter->cmdpriv;
        struct mlme_ext_priv    *pmlmeext = &padapter->mlmeextpriv;

At first I thought this was intentional, but now I'm wondering if this
is an accident. It's normal to just use one space between the type and
the variable name, right?


--Emily
