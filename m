X-GM-THRID: 6211463142533234688
X-Received: by 10.28.87.15 with SMTP id l15mr61008wmb.1.1446239520995;
        Fri, 30 Oct 2015 14:12:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.37.69 with SMTP id l66ls19386lfl.8.gmail; Fri, 30 Oct 2015
 14:12:00 -0700 (PDT)
X-Received: by 10.112.166.40 with SMTP id zd8mr1463893lbb.21.1446239520441;
        Fri, 30 Oct 2015 14:12:00 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id t18si150553wme.0.2015.10.30.14.12.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 14:12:00 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0LodXq-1aOYmo0QkE-00gZoi; Fri, 30 Oct
 2015 22:12:00 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/7] Staging: lustre: Declare local functions as static  and drop unused functions
Date: Fri, 30 Oct 2015 22:11:59 +0100
Message-ID: <4106483.85KOHKPzK9@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:sd3rExYe45qlkusGmylH9vQ8as0ZWlaIXx18L+mYcOLJtG5sbQY
 VLJlNSCDaXB5E7YqF6YUkTaxWaMDxyv1i7U73/q7Ef8p7rYPOyo6ZwvkJ+tVj4hEAsPDA+3
 0fgIMciXehO5AxhGv8Ck8KdK2fqhgkrgUFPwtd2c5LaQUJRnhk8dV6R57WkdwYekR8sRI1c
 MPovC3J7x1DgXBoECVFjQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:06ZlVZkwZ00=:xN7OOim31Ska7Q1MVn/7Et
 yNOtYdWyeHF8w3xlwwRwMCU2dU2vvl464ZP1WOZj7JgZFMM7jUC/oL7KvlmBvTNHFrRqLp6RT
 zidYAV8SZyCaOj4Joj31lQ1FYtPTwfNu5QcJ3AGzcdD0r61IdW2qUxObxrQJvxfDKRrLoEiyM
 1AItrSaziF+uTdbxBIdvQrfFw+Kt3t5gGq3WxsRa6ralLqR9paZtLWiAT1YiCKIDAv9RI9kZN
 SiArN4eZcxx2jcKZ11EPUMLcUSRKCSOJ5GkdlUZhQmw/94Gt8T2H0QxO7GCt3e+G/h3PACdSX
 M84jf9cjHX8gTBT8XZIdsiaACuHzxEMyiWTJyrWZF4v9HotCuTWCO4SjuMd5WUVDf08hug9rD
 I+gZkg4SeGqF+JraCsmcmIqRy8EtRJxaOyBbrG8zV6Nj5/yBEHFtkIwybuepkOyXwLz2WR1+Q
 tIvknReYNZstIC1Uyzlq6YvdZ5cJDlp554rrxYprHbDLfzUmphwrED21XZvOvTiDCKE8nRXdl
 D+PNDzD9O3tyAS+fLO2uTxbedw4rKCbli0Hx7Txo55G91pRWIZ0fVxh3PlllYZRCsHFjV1ha9
 IIRrYaOILsvtjkaat2Es7jXOdAcG0cn4vxXC6sjI5x291dlhZc9BMalmowMkIoCBzd/J8r3XF
 u2h/puCN9emNIeiZAj5pLJ2XyU64zg2FO3COl8Nt0fFGckloPKI7OGym0P01Jpy9fVocwRSRn
 6GqBxn4+7vK1hFsa

On Friday 30 October 2015 20:59:02 Shraddha Barke wrote:
> These patches declare local functions as static and remove corresponding
> declarations from header files. Unused function definitions and declarations
> are also removed.
> 
> Shraddha Barke (7):
>   Staging: lustre: mdc: Declare local functions as static
>   Staging: lustre: mdc: Remove unused mdc_open function from header
>   Staging: lustre: fld: Remove unused seq_client_alloc_super
>   Staging: lustre: fld: Declare local functions as static
>   Staging: lustre: fld: Remove unused functions
>   Staging: lustre: fld: Remove unused declaration
>   Staging: lustre: osc: Declare local functions as static
> 
> 

Nice work, whole series

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

