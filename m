X-GM-THRID: 6663027370941743104
X-Received: by 2002:a25:3841:: with SMTP id f62mr3476478yba.35.1551358055961;
        Thu, 28 Feb 2019 04:47:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:a223:: with SMTP id b32ls1447814ybi.6.gmail; Thu, 28 Feb
 2019 04:47:35 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaoLvsqzwWorno0MtWd3aSFwRDzrzRm5dpvZsgAquV6ZeutnF2/vzK7bM2R6Nxyqgh9hNKx
X-Received: by 2002:a25:6602:: with SMTP id a2mr3618454ybc.60.1551358054960;
        Thu, 28 Feb 2019 04:47:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551358054; cv=none;
        d=google.com; s=arc-20160816;
        b=mGtZtNR+VepP8mjslG19gvQxDqUR4SYKOQyRX3ZiXMUY1yCwyKJLIZKcbWYrI66FS/
         oAfW5gdI9m2WvGVDCdg4tTwSnZtgT3LpoqL7gWFp6qp3g+PhpxZp1toJK/iihx0g95xg
         JbcyHabp2xpse4NW3KMisrSGPjxis78Ov4n64QchOdSPTRokCaY0GzsLAly3KEin16Nc
         FdZV6ZUPwgPhpea9alQH3ymgOBU4x9o0GviYjnid5KPip6MwdqvRPL1goxC5GUdggmU9
         UrZkMNO36p/mF3aftMxMBmfYvpsvuplTBV1jDFb8RnJ76xU/kys5Tn5o6p0u7mk2lloS
         zSPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AdkjuG1LQtnTCB2Wzoy0kFUic83OspQGth3fQU25N0s=;
        b=FNQZYhO2KVyuC4zj+tsIvqk06KIFTsy7X0YfAnX2hL/BV9PdOQlwfpwvn0dhXTO0rF
         Shrc7kos8C1ovkBjXP3bLXJnDN5jCITbWbL2/iGufHJpuq2HZVLd/+oygh0hTEwkBQnm
         UjExQbMdAyVaLoT48zv+zmgmvqglwXlraHVLpLSkn81iHRjDPGEmePXSqRRE2XIsHk5N
         FvM1VszNRJoqrGv7wA9CCVbFIlb7oKz4Rs7IiNIi+uEhva2R8kjsiNi64JWD6AR0tyIB
         PDTpKc3JRYOfh1ajcGcvVHjHvf9GJf5Dj8o6oEyj7+hO9Ymzh+YR/3frxGuwLtDyz4uF
         J80Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Qqk/e6nf";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id x187si807331ybc.5.2019.02.28.04.47.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 04:47:34 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Qqk/e6nf";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id y4so23220963qtc.10
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 04:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AdkjuG1LQtnTCB2Wzoy0kFUic83OspQGth3fQU25N0s=;
        b=Qqk/e6nfVvX5CpF95xn86QsKSWvEPu0L0/RLARZBaH485gguZmFLVgQO6qJ+q8h1f9
         4ns5Lw5AdsNeX6c8+bWGbi7wO2Ej2iJ31q1+7F4x1+UafjLqjNktGb3A+btj986NG2FR
         WLsq4LBD+b2No0r9oXSDAKRWv5jrxFBbmK9H6Gff8bbnn7Un8EhRAzoCNAku3DpZpmVb
         fZBtfJmXl5Qsr9y8dz3/0JC6QAO4hG88Y8FEXUtPyskMLI8Z/sY3+00Y6HgPrPOT7QN5
         0goopmlvqr6K4+t9dyM7dMMIA6ugkqXev55P1HIlTUmB8WKbidyejbGy0jyYe8Wc9FUi
         Qx7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AdkjuG1LQtnTCB2Wzoy0kFUic83OspQGth3fQU25N0s=;
        b=PZjrBQ4IvI95BfAURi7p35mBFSrpgJ7ClTqL4iYWg1llPAKbcUQPy7BRIaEn1cuErh
         XsBAPUUmU/2ERIr5hiZiBbUBQ4wUt4d5KKaTwynmRZNyVrKiaq7pfZP6IfEIsYMf4EQp
         Yh0CcW2UkitW6xJ0o7QZUjpdjKM+nLmB0Xuco3YQ6NPkPvML21W/fWPTgxtqa1TQTYZ8
         5FF7DChLGIfwjboVdztYTMfp3YxuuMDw7vRDq46bhWeigrI/d3Z6Jfu5yTUwL1PNdPkw
         oYI4+ZB9FNLXavCIY61Fjx/0mM9ATeV6S7BtYz4kk6JMp1Y/N/xE/bXeJwuyam0P/917
         uOvg==
X-Gm-Message-State: AHQUAuYuaxO5cy3Q4vx2jHXPLh63bRu9ghMk2KLxFo/TEhpLpzS0hi2x
	pmiKqC1cmFUF3TEJO15W2K6k6zmk7yR9Deldg4qIjw==
X-Received: by 2002:aed:3b92:: with SMTP id r18mr5934241qte.7.1551358054539;
 Thu, 28 Feb 2019 04:47:34 -0800 (PST)
MIME-Version: 1.0
References: <20190228122904.GA16782@bhagyashri-Lenovo-G570>
In-Reply-To: <20190228122904.GA16782@bhagyashri-Lenovo-G570>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Thu, 28 Feb 2019 18:17:23 +0530
Message-ID: <CAOMPgjhjgt2bv3pL4weJjx6VgfV8Bfrmdfu31esFB8CPKusGgQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] staging: speakup: fix line over 80 characters.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michael Kelley <mikelley@microsoft.com>, Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000c2a5cf0582f3b14f"

--000000000000c2a5cf0582f3b14f
Content-Type: text/plain; charset="UTF-8"

This looks good! If greg replies to make changes! Ask him  what kind of
changes you required.

On Thu, 28 Feb 2019 at 5:59 PM, Bhagyashri Dighole <
digholebhagyashri@gmail.com> wrote:

> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v2:
>   - Make the code more readable.
>
>  drivers/staging/speakup/main.c             | 13 ++++++++-----
>  drivers/staging/speakup/speakup_decext.c   |  3 ++-
>  drivers/staging/speakup/speakup_dectlk.c   |  3 ++-
>  drivers/staging/speakup/speakup_soft.c     |  4 +++-
>  drivers/staging/speakup/spk_priv_keyinfo.h |  9 +++++++--
>  drivers/staging/speakup/spk_ttyio.c        | 20 ++++++++++++--------
>  drivers/staging/speakup/varhandlers.c      |  3 ++-
>  7 files changed, 36 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c
> b/drivers/staging/speakup/main.c
> index 869f40e..57ce444 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -901,7 +901,8 @@ static int get_sentence_buf(struct vc_data *vc, int
> read_punc)
>         while (start < end) {
>                 sentbuf[bn][i] = get_char(vc, (u_short *)start, &tmp);
>                 if (i > 0) {
> -                       if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1]
> == '.' &&
> +                       if (sentbuf[bn][i] == SPACE &&
> +                           sentbuf[bn][i - 1] == '.' &&
>                             numsentences[bn] < 9) {
>                                 /* Sentence Marker */
>                                 numsentences[bn]++;
> @@ -1235,7 +1236,8 @@ int spk_set_key_info(const u_char *key_info, u_char
> *k_buffer)
>         key_data_len = (states + 1) * (num_keys + 1);
>         if (key_data_len + SHIFT_TBL_SIZE + 4 >= sizeof(spk_key_buf)) {
>                 pr_debug("too many key_infos (%d over %u)\n",
> -                        key_data_len + SHIFT_TBL_SIZE + 4, (unsigned
> int)(sizeof(spk_key_buf)));
> +                        key_data_len + SHIFT_TBL_SIZE + 4,
> +                        (unsigned int)(sizeof(spk_key_buf)));
>                 return -EINVAL;
>         }
>         memset(k_buffer, 0, SHIFT_TBL_SIZE);
> @@ -1249,8 +1251,8 @@ int spk_set_key_info(const u_char *key_info, u_char
> *k_buffer)
>         for (i = 1; i <= states; i++) {
>                 ch = *cp1++;
>                 if (ch >= SHIFT_TBL_SIZE) {
> -                       pr_debug("(%d) not valid shift state (max_allowed
> = %d)\n", ch,
> -                                SHIFT_TBL_SIZE);
> +                       pr_debug("(%d) not valid shift state (max_allowed
> = %d)\n",
> +                                ch, SHIFT_TBL_SIZE);
>                         return -EINVAL;
>                 }
>                 spk_shift_table[ch] = i;
> @@ -1258,7 +1260,8 @@ int spk_set_key_info(const u_char *key_info, u_char
> *k_buffer)
>         keymap_flags = *cp1++;
>         while ((ch = *cp1)) {
>                 if (ch >= MAX_KEY) {
> -                       pr_debug("(%d), not valid key, (max_allowed =
> %d)\n", ch, MAX_KEY);
> +                       pr_debug("(%d), not valid key, (max_allowed =
> %d)\n",
> +                                ch, MAX_KEY);
>                         return -EINVAL;
>                 }
>                 spk_our_keys[ch] = cp1;
> diff --git a/drivers/staging/speakup/speakup_decext.c
> b/drivers/staging/speakup/speakup_decext.c
> index 3741c0f..ddbb7e9 100644
> --- a/drivers/staging/speakup/speakup_decext.c
> +++ b/drivers/staging/speakup/speakup_decext.c
> @@ -192,7 +192,8 @@ static void do_catch_up(struct spk_synth *synth)
>                                 synth->io_ops->synth_out(synth,
> PROCSPEECH);
>                         if (time_after_eq(jiffies, jiff_max)) {
>                                 if (!in_escape)
> -                                       synth->io_ops->synth_out(synth,
> PROCSPEECH);
> +                                       synth->io_ops->synth_out(synth,
> +
> PROCSPEECH);
>                                 spin_lock_irqsave(&speakup_info.spinlock,
>                                                   flags);
>                                 jiffy_delta_val = jiffy_delta->u.n.value;
> diff --git a/drivers/staging/speakup/speakup_dectlk.c
> b/drivers/staging/speakup/speakup_dectlk.c
> index a144f28..dccb4ea 100644
> --- a/drivers/staging/speakup/speakup_dectlk.c
> +++ b/drivers/staging/speakup/speakup_dectlk.c
> @@ -260,7 +260,8 @@ static void do_catch_up(struct spk_synth *synth)
>                                 synth->io_ops->synth_out(synth,
> PROCSPEECH);
>                         if (time_after_eq(jiffies, jiff_max)) {
>                                 if (!in_escape)
> -                                       synth->io_ops->synth_out(synth,
> PROCSPEECH);
> +                                       synth->io_ops->synth_out(synth,
> +
> PROCSPEECH);
>                                 spin_lock_irqsave(&speakup_info.spinlock,
>                                                   flags);
>                                 jiffy_delta_val = jiffy_delta->u.n.value;
> diff --git a/drivers/staging/speakup/speakup_soft.c
> b/drivers/staging/speakup/speakup_soft.c
> index 947c795..edff6ce 100644
> --- a/drivers/staging/speakup/speakup_soft.c
> +++ b/drivers/staging/speakup/speakup_soft.c
> @@ -12,7 +12,9 @@
>  #include <linux/unistd.h>
>  #include <linux/miscdevice.h>  /* for misc_register, and SYNTH_MINOR */
>  #include <linux/poll.h>                /* for poll_wait() */
> -#include <linux/sched/signal.h> /* schedule(), signal_pending(),
> TASK_INTERRUPTIBLE */
> +
> +/* schedule(), signal_pending(), TASK_INTERRUPTIBLE */
> +#include <linux/sched/signal.h>
>
>  #include "spk_priv.h"
>  #include "speakup.h"
> diff --git a/drivers/staging/speakup/spk_priv_keyinfo.h
> b/drivers/staging/speakup/spk_priv_keyinfo.h
> index cc99fcd..1f789bd 100644
> --- a/drivers/staging/speakup/spk_priv_keyinfo.h
> +++ b/drivers/staging/speakup/spk_priv_keyinfo.h
> @@ -61,11 +61,16 @@
>  #define SPEAKUP_HELP           0x2d
>  #define TOGGLE_CURSORING       0x2e
>  #define READ_ALL_DOC           0x2f
> -#define SPKUP_MAX_FUNC         0x30 /* one greater than the last func
> handler */
> +
> +/* one greater than the last func handler */
> +#define SPKUP_MAX_FUNC         0x30
> +
>  #define SPK_KEY                0x80
>  #define FIRST_EDIT_BITS        0x22
>  #define FIRST_SET_VAR SPELL_DELAY
> -#define VAR_START              0x40 /* increase if adding more than 0x3f
> functions */
> +
> +/* increase if adding more than 0x3f functions */
> +#define VAR_START              0x40
>
>  /* keys for setting variables, must be ordered same as the enum for
> var_ids */
>  /* with dec being even and inc being 1 greater */
> diff --git a/drivers/staging/speakup/spk_ttyio.c
> b/drivers/staging/speakup/spk_ttyio.c
> index 005de00..0057eb9 100644
> --- a/drivers/staging/speakup/spk_ttyio.c
> +++ b/drivers/staging/speakup/spk_ttyio.c
> @@ -128,7 +128,8 @@ struct spk_io_ops spk_ttyio_ops = {
>  };
>  EXPORT_SYMBOL_GPL(spk_ttyio_ops);
>
> -static inline void get_termios(struct tty_struct *tty, struct ktermios
> *out_termios)
> +static inline void get_termios(struct tty_struct *tty,
> +                              struct ktermios *out_termios)
>  {
>         down_read(&tty->termios_rwsem);
>         *out_termios = tty->termios;
> @@ -167,8 +168,9 @@ static int spk_ttyio_initialise_ldisc(struct spk_synth
> *synth)
>                 tmp_termios.c_cflag |= CRTSCTS;
>                 tty_set_termios(tty, &tmp_termios);
>                 /*
> -                * check c_cflag to see if it's updated as tty_set_termios
> may not return
> -                * error even when no tty bits are changed by the request.
> +                * check c_cflag to see if it's updated as tty_set_termios
> +                * may not return error even when no tty bits are
> +                * changed by the request.
>                  */
>                 get_termios(tty, &tmp_termios);
>                 if (!(tmp_termios.c_cflag & CRTSCTS))
> @@ -207,10 +209,11 @@ static int spk_ttyio_out(struct spk_synth *in_synth,
> const char ch)
>                         /* No room */
>                         return 0;
>                 if (ret < 0) {
> -                       pr_warn("%s: I/O error, deactivating speakup\n",
> in_synth->long_name);
> -                       /* No synth any more, so nobody will restart TTYs,
> and we thus
> -                        * need to do it ourselves.  Now that there is no
> synth we can
> -                        * let application flood anyway
> +                       pr_warn("%s: I/O error, deactivating speakup\n",
> +                               in_synth->long_name);
> +                       /* No synth any more, so nobody will restart TTYs,
> +                        * and we thus need to do it ourselves.  Now that
> there
> +                        * is no synth we can let application flood anyway
>                          */
>                         in_synth->alive = 0;
>                         speakup_start_ttys();
> @@ -371,7 +374,8 @@ const char *spk_ttyio_synth_immediate(struct spk_synth
> *synth, const char *buff)
>         while ((ch = *buff)) {
>                 if (ch == '\n')
>                         ch = synth->procspeech;
> -               if (tty_write_room(speakup_tty) < 1 ||
> !synth->io_ops->synth_out(synth, ch))
> +               if (tty_write_room(speakup_tty) < 1 ||
> +                   !synth->io_ops->synth_out(synth, ch))
>                         return buff;
>                 buff++;
>         }
> diff --git a/drivers/staging/speakup/varhandlers.c
> b/drivers/staging/speakup/varhandlers.c
> index 1b54515..73d8d4c 100644
> --- a/drivers/staging/speakup/varhandlers.c
> +++ b/drivers/staging/speakup/varhandlers.c
> @@ -238,7 +238,8 @@ int spk_set_num_var(int input, struct st_var_header
> *var, int how)
>         if (!var_data->u.n.out_str)
>                 sprintf(cp, var_data->u.n.synth_fmt, (int)val);
>         else
> -               sprintf(cp, var_data->u.n.synth_fmt,
> var_data->u.n.out_str[val]);
> +               sprintf(cp, var_data->u.n.synth_fmt,
> +                       var_data->u.n.out_str[val]);
>         synth_printf("%s", cp);
>         return 0;
>  }
> --
> 2.7.4
>
>

--000000000000c2a5cf0582f3b14f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdj48ZGl2IGRpcj0iYXV0byI+VGhpcyBsb29rcyBnb29kISBJZiBncmVnIHJlcGxpZXMgdG8g
bWFrZSBjaGFuZ2VzISBBc2sgaGltIMKgd2hhdCBraW5kIG9mIGNoYW5nZXMgeW91IHJlcXVpcmVk
LjwvZGl2PjwvZGl2PjxkaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0i
bHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gVGh1LCAyOCBGZWIgMjAxOSBhdCA1OjU5IFBNLCBC
aGFneWFzaHJpIERpZ2hvbGUgJmx0OzxhIGhyZWY9Im1haWx0bzpkaWdob2xlYmhhZ3lhc2hyaUBn
bWFpbC5jb20iPmRpZ2hvbGViaGFneWFzaHJpQGdtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48
L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAg
LjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij5GaXggY29k
aW5nIHN0eWxlIGlzc3Vlcywgd2hpY2ggc29sdmVzIDxhIGhyZWY9Imh0dHA6Ly9jaGVja3BhdGNo
LnBsIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5jaGVja3BhdGNoLnBsPC9hPiB3
YXJuaW5nOjxicj4NCiZxdW90O1dBUk5JTkc6IGxpbmUgb3ZlciA4MCBjaGFyYWN0ZXJzJnF1b3Q7
Ljxicj4NCjxicj4NClNpZ25lZC1vZmYtYnk6IEJoYWd5YXNocmkgRGlnaG9sZSAmbHQ7PGEgaHJl
Zj0ibWFpbHRvOmRpZ2hvbGViaGFneWFzaHJpQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmRp
Z2hvbGViaGFneWFzaHJpQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KLS0tPGJyPg0KQ2hhbmdlcyBp
biB2Mjo8YnI+DQrCoCAtIE1ha2UgdGhlIGNvZGUgbW9yZSByZWFkYWJsZS48YnI+DQo8YnI+DQrC
oGRyaXZlcnMvc3RhZ2luZy9zcGVha3VwL21haW4uY8KgIMKgIMKgIMKgIMKgIMKgIMKgfCAxMyAr
KysrKysrKy0tLS0tPGJyPg0KwqBkcml2ZXJzL3N0YWdpbmcvc3BlYWt1cC9zcGVha3VwX2RlY2V4
dC5jwqAgwqB8wqAgMyArKy08YnI+DQrCoGRyaXZlcnMvc3RhZ2luZy9zcGVha3VwL3NwZWFrdXBf
ZGVjdGxrLmPCoCDCoHzCoCAzICsrLTxicj4NCsKgZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3Bl
YWt1cF9zb2Z0LmPCoCDCoCDCoHzCoCA0ICsrKy08YnI+DQrCoGRyaXZlcnMvc3RhZ2luZy9zcGVh
a3VwL3Nwa19wcml2X2tleWluZm8uaCB8wqAgOSArKysrKysrLS08YnI+DQrCoGRyaXZlcnMvc3Rh
Z2luZy9zcGVha3VwL3Nwa190dHlpby5jwqAgwqAgwqAgwqAgfCAyMCArKysrKysrKysrKystLS0t
LS0tLTxicj4NCsKgZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvdmFyaGFuZGxlcnMuY8KgIMKgIMKg
IHzCoCAzICsrLTxicj4NCsKgNyBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAxOSBk
ZWxldGlvbnMoLSk8YnI+DQo8YnI+DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3NwZWFr
dXAvbWFpbi5jIGIvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvbWFpbi5jPGJyPg0KaW5kZXggODY5
ZjQwZS4uNTdjZTQ0NCAxMDA2NDQ8YnI+DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvc3BlYWt1cC9t
YWluLmM8YnI+DQorKysgYi9kcml2ZXJzL3N0YWdpbmcvc3BlYWt1cC9tYWluLmM8YnI+DQpAQCAt
OTAxLDcgKzkwMSw4IEBAIHN0YXRpYyBpbnQgZ2V0X3NlbnRlbmNlX2J1ZihzdHJ1Y3QgdmNfZGF0
YSAqdmMsIGludCByZWFkX3B1bmMpPGJyPg0KwqAgwqAgwqAgwqAgd2hpbGUgKHN0YXJ0ICZsdDsg
ZW5kKSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc2VudGJ1Zltibl1baV0gPSBnZXRf
Y2hhcih2YywgKHVfc2hvcnQgKilzdGFydCwgJmFtcDt0bXApOzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGlmIChpICZndDsgMCkgezxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGlmIChzZW50YnVmW2JuXVtpXSA9PSBTUEFDRSAmYW1wOyZhbXA7IHNlbnRidWZb
Ym5dW2kgLSAxXSA9PSAmIzM5Oy4mIzM5OyAmYW1wOyZhbXA7PGJyPg0KK8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHNlbnRidWZbYm5dW2ldID09IFNQQUNFICZhbXA7JmFt
cDs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzZW50YnVm
W2JuXVtpIC0gMV0gPT0gJiMzOTsuJiMzOTsgJmFtcDsmYW1wOzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG51bXNlbnRlbmNlc1tibl0gJmx0OyA5KSB7PGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLyogU2Vu
dGVuY2UgTWFya2VyICovPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgbnVtc2VudGVuY2VzW2JuXSsrOzxicj4NCkBAIC0xMjM1LDcgKzEyMzYsOCBA
QCBpbnQgc3BrX3NldF9rZXlfaW5mbyhjb25zdCB1X2NoYXIgKmtleV9pbmZvLCB1X2NoYXIgKmtf
YnVmZmVyKTxicj4NCsKgIMKgIMKgIMKgIGtleV9kYXRhX2xlbiA9IChzdGF0ZXMgKyAxKSAqIChu
dW1fa2V5cyArIDEpOzxicj4NCsKgIMKgIMKgIMKgIGlmIChrZXlfZGF0YV9sZW4gKyBTSElGVF9U
QkxfU0laRSArIDQgJmd0Oz0gc2l6ZW9mKHNwa19rZXlfYnVmKSkgezxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIHByX2RlYnVnKCZxdW90O3RvbyBtYW55IGtleV9pbmZvcyAoJWQgb3ZlciAl
dSlcbiZxdW90Oyw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAga2V5
X2RhdGFfbGVuICsgU0hJRlRfVEJMX1NJWkUgKyA0LCAodW5zaWduZWQgaW50KShzaXplb2Yoc3Br
X2tleV9idWYpKSk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGtl
eV9kYXRhX2xlbiArIFNISUZUX1RCTF9TSVpFICsgNCw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgKHVuc2lnbmVkIGludCkoc2l6ZW9mKHNwa19rZXlfYnVmKSkpOzxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiAtRUlOVkFMOzxicj4NCsKgIMKgIMKg
IMKgIH08YnI+DQrCoCDCoCDCoCDCoCBtZW1zZXQoa19idWZmZXIsIDAsIFNISUZUX1RCTF9TSVpF
KTs8YnI+DQpAQCAtMTI0OSw4ICsxMjUxLDggQEAgaW50IHNwa19zZXRfa2V5X2luZm8oY29uc3Qg
dV9jaGFyICprZXlfaW5mbywgdV9jaGFyICprX2J1ZmZlcik8YnI+DQrCoCDCoCDCoCDCoCBmb3Ig
KGkgPSAxOyBpICZsdDs9IHN0YXRlczsgaSsrKSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgY2ggPSAqY3AxKys7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKGNoICZndDs9
IFNISUZUX1RCTF9TSVpFKSB7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcHJfZGVidWcoJnF1b3Q7KCVkKSBub3QgdmFsaWQgc2hpZnQgc3RhdGUgKG1heF9hbGxvd2Vk
ID0gJWQpXG4mcXVvdDssIGNoLDxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBTSElGVF9UQkxfU0laRSk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgcHJfZGVidWcoJnF1b3Q7KCVkKSBub3QgdmFsaWQgc2hpZnQgc3Rh
dGUgKG1heF9hbGxvd2VkID0gJWQpXG4mcXVvdDssPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGNoLCBTSElGVF9UQkxfU0laRSk7PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0dXJuIC1FSU5WQUw7PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgfTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHNwa19z
aGlmdF90YWJsZVtjaF0gPSBpOzxicj4NCkBAIC0xMjU4LDcgKzEyNjAsOCBAQCBpbnQgc3BrX3Nl
dF9rZXlfaW5mbyhjb25zdCB1X2NoYXIgKmtleV9pbmZvLCB1X2NoYXIgKmtfYnVmZmVyKTxicj4N
CsKgIMKgIMKgIMKgIGtleW1hcF9mbGFncyA9ICpjcDErKzs8YnI+DQrCoCDCoCDCoCDCoCB3aGls
ZSAoKGNoID0gKmNwMSkpIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoY2ggJmd0
Oz0gTUFYX0tFWSkgezxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBy
X2RlYnVnKCZxdW90OyglZCksIG5vdCB2YWxpZCBrZXksIChtYXhfYWxsb3dlZCA9ICVkKVxuJnF1
b3Q7LCBjaCwgTUFYX0tFWSk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcHJfZGVidWcoJnF1b3Q7KCVkKSwgbm90IHZhbGlkIGtleSwgKG1heF9hbGxvd2VkID0gJWQp
XG4mcXVvdDssPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIGNoLCBNQVhfS0VZKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCByZXR1cm4gLUVJTlZBTDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3BrX291cl9rZXlzW2NoXSA9IGNwMTs8YnI+DQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BlYWt1cF9kZWNleHQuYyBiL2RyaXZl
cnMvc3RhZ2luZy9zcGVha3VwL3NwZWFrdXBfZGVjZXh0LmM8YnI+DQppbmRleCAzNzQxYzBmLi5k
ZGJiN2U5IDEwMDY0NDxicj4NCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy9zcGVha3VwL3NwZWFrdXBf
ZGVjZXh0LmM8YnI+DQorKysgYi9kcml2ZXJzL3N0YWdpbmcvc3BlYWt1cC9zcGVha3VwX2RlY2V4
dC5jPGJyPg0KQEAgLTE5Miw3ICsxOTIsOCBAQCBzdGF0aWMgdm9pZCBkb19jYXRjaF91cChzdHJ1
Y3Qgc3BrX3N5bnRoICpzeW50aCk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBzeW50aC0mZ3Q7aW9fb3BzLSZndDtzeW50aF9vdXQoc3ludGgsIFBS
T0NTUEVFQ0gpOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICh0
aW1lX2FmdGVyX2VxKGppZmZpZXMsIGppZmZfbWF4KSkgezxicj4NCsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICghaW5fZXNjYXBlKTxicj4NCi3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN5
bnRoLSZndDtpb19vcHMtJmd0O3N5bnRoX291dChzeW50aCwgUFJPQ1NQRUVDSCk7PGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
c3ludGgtJmd0O2lvX29wcy0mZ3Q7c3ludGhfb3V0KHN5bnRoLDxicj4NCivCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBQUk9DU1BFRUNIKTs8YnI+DQrCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzcGluX2xvY2tfaXJxc2F2ZSgmYW1w
O3NwZWFrdXBfaW5mby5zcGlubG9jayw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmbGFncyk7PGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgamlmZnlf
ZGVsdGFfdmFsID0gamlmZnlfZGVsdGEtJmd0O3Uubi52YWx1ZTs8YnI+DQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BlYWt1cF9kZWN0bGsuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9zcGVha3VwL3NwZWFrdXBfZGVjdGxrLmM8YnI+DQppbmRleCBhMTQ0ZjI4Li5kY2NiNGVhIDEw
MDY0NDxicj4NCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy9zcGVha3VwL3NwZWFrdXBfZGVjdGxrLmM8
YnI+DQorKysgYi9kcml2ZXJzL3N0YWdpbmcvc3BlYWt1cC9zcGVha3VwX2RlY3Rsay5jPGJyPg0K
QEAgLTI2MCw3ICsyNjAsOCBAQCBzdGF0aWMgdm9pZCBkb19jYXRjaF91cChzdHJ1Y3Qgc3BrX3N5
bnRoICpzeW50aCk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCBzeW50aC0mZ3Q7aW9fb3BzLSZndDtzeW50aF9vdXQoc3ludGgsIFBST0NTUEVFQ0gp
Ozxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICh0aW1lX2FmdGVy
X2VxKGppZmZpZXMsIGppZmZfbWF4KSkgezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICghaW5fZXNjYXBlKTxicj4NCi3CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN5bnRoLSZndDtp
b19vcHMtJmd0O3N5bnRoX291dChzeW50aCwgUFJPQ1NQRUVDSCk7PGJyPg0KK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3ludGgtJmd0
O2lvX29wcy0mZ3Q7c3ludGhfb3V0KHN5bnRoLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBQUk9DU1BFRUNIKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzcGluX2xvY2tfaXJxc2F2ZSgmYW1wO3NwZWFrdXBf
aW5mby5zcGlubG9jayw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmbGFncyk7PGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgamlmZnlfZGVsdGFfdmFs
ID0gamlmZnlfZGVsdGEtJmd0O3Uubi52YWx1ZTs8YnI+DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL3NwZWFrdXAvc3BlYWt1cF9zb2Z0LmMgYi9kcml2ZXJzL3N0YWdpbmcvc3BlYWt1cC9z
cGVha3VwX3NvZnQuYzxicj4NCmluZGV4IDk0N2M3OTUuLmVkZmY2Y2UgMTAwNjQ0PGJyPg0KLS0t
IGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BlYWt1cF9zb2Z0LmM8YnI+DQorKysgYi9kcml2
ZXJzL3N0YWdpbmcvc3BlYWt1cC9zcGVha3VwX3NvZnQuYzxicj4NCkBAIC0xMiw3ICsxMiw5IEBA
PGJyPg0KwqAjaW5jbHVkZSAmbHQ7bGludXgvdW5pc3RkLmgmZ3Q7PGJyPg0KwqAjaW5jbHVkZSAm
bHQ7bGludXgvbWlzY2RldmljZS5oJmd0O8KgIC8qIGZvciBtaXNjX3JlZ2lzdGVyLCBhbmQgU1lO
VEhfTUlOT1IgKi88YnI+DQrCoCNpbmNsdWRlICZsdDtsaW51eC9wb2xsLmgmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgLyogZm9yIHBvbGxfd2FpdCgpICovPGJyPg0KLSNpbmNsdWRlICZsdDts
aW51eC9zY2hlZC9zaWduYWwuaCZndDsgLyogc2NoZWR1bGUoKSwgc2lnbmFsX3BlbmRpbmcoKSwg
VEFTS19JTlRFUlJVUFRJQkxFICovPGJyPg0KKzxicj4NCisvKiBzY2hlZHVsZSgpLCBzaWduYWxf
cGVuZGluZygpLCBUQVNLX0lOVEVSUlVQVElCTEUgKi88YnI+DQorI2luY2x1ZGUgJmx0O2xpbnV4
L3NjaGVkL3NpZ25hbC5oJmd0Ozxicj4NCjxicj4NCsKgI2luY2x1ZGUgJnF1b3Q7c3BrX3ByaXYu
aCZxdW90Ozxicj4NCsKgI2luY2x1ZGUgJnF1b3Q7c3BlYWt1cC5oJnF1b3Q7PGJyPg0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9zcGVha3VwL3Nwa19wcml2X2tleWluZm8uaCBiL2RyaXZl
cnMvc3RhZ2luZy9zcGVha3VwL3Nwa19wcml2X2tleWluZm8uaDxicj4NCmluZGV4IGNjOTlmY2Qu
LjFmNzg5YmQgMTAwNjQ0PGJyPg0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BrX3By
aXZfa2V5aW5mby5oPGJyPg0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BrX3ByaXZf
a2V5aW5mby5oPGJyPg0KQEAgLTYxLDExICs2MSwxNiBAQDxicj4NCsKgI2RlZmluZSBTUEVBS1VQ
X0hFTFDCoCDCoCDCoCDCoCDCoCDCoDB4MmQ8YnI+DQrCoCNkZWZpbmUgVE9HR0xFX0NVUlNPUklO
R8KgIMKgIMKgIMKgMHgyZTxicj4NCsKgI2RlZmluZSBSRUFEX0FMTF9ET0PCoCDCoCDCoCDCoCDC
oCDCoDB4MmY8YnI+DQotI2RlZmluZSBTUEtVUF9NQVhfRlVOQ8KgIMKgIMKgIMKgIMKgMHgzMCAv
KiBvbmUgZ3JlYXRlciB0aGFuIHRoZSBsYXN0IGZ1bmMgaGFuZGxlciAqLzxicj4NCis8YnI+DQor
Lyogb25lIGdyZWF0ZXIgdGhhbiB0aGUgbGFzdCBmdW5jIGhhbmRsZXIgKi88YnI+DQorI2RlZmlu
ZSBTUEtVUF9NQVhfRlVOQ8KgIMKgIMKgIMKgIMKgMHgzMDxicj4NCis8YnI+DQrCoCNkZWZpbmUg
U1BLX0tFWcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDB4ODA8YnI+DQrCoCNkZWZpbmUgRklSU1Rf
RURJVF9CSVRTwqAgwqAgwqAgwqAgMHgyMjxicj4NCsKgI2RlZmluZSBGSVJTVF9TRVRfVkFSIFNQ
RUxMX0RFTEFZPGJyPg0KLSNkZWZpbmUgVkFSX1NUQVJUwqAgwqAgwqAgwqAgwqAgwqAgwqAgMHg0
MCAvKiBpbmNyZWFzZSBpZiBhZGRpbmcgbW9yZSB0aGFuIDB4M2YgZnVuY3Rpb25zICovPGJyPg0K
Kzxicj4NCisvKiBpbmNyZWFzZSBpZiBhZGRpbmcgbW9yZSB0aGFuIDB4M2YgZnVuY3Rpb25zICov
PGJyPg0KKyNkZWZpbmUgVkFSX1NUQVJUwqAgwqAgwqAgwqAgwqAgwqAgwqAgMHg0MDxicj4NCjxi
cj4NCsKgLyoga2V5cyBmb3Igc2V0dGluZyB2YXJpYWJsZXMsIG11c3QgYmUgb3JkZXJlZCBzYW1l
IGFzIHRoZSBlbnVtIGZvciB2YXJfaWRzICovPGJyPg0KwqAvKiB3aXRoIGRlYyBiZWluZyBldmVu
IGFuZCBpbmMgYmVpbmcgMSBncmVhdGVyICovPGJyPg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9zcGVha3VwL3Nwa190dHlpby5jIGIvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvc3BrX3R0
eWlvLmM8YnI+DQppbmRleCAwMDVkZTAwLi4wMDU3ZWI5IDEwMDY0NDxicj4NCi0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9zcGVha3VwL3Nwa190dHlpby5jPGJyPg0KKysrIGIvZHJpdmVycy9zdGFnaW5n
L3NwZWFrdXAvc3BrX3R0eWlvLmM8YnI+DQpAQCAtMTI4LDcgKzEyOCw4IEBAIHN0cnVjdCBzcGtf
aW9fb3BzIHNwa190dHlpb19vcHMgPSB7PGJyPg0KwqB9Ozxicj4NCsKgRVhQT1JUX1NZTUJPTF9H
UEwoc3BrX3R0eWlvX29wcyk7PGJyPg0KPGJyPg0KLXN0YXRpYyBpbmxpbmUgdm9pZCBnZXRfdGVy
bWlvcyhzdHJ1Y3QgdHR5X3N0cnVjdCAqdHR5LCBzdHJ1Y3Qga3Rlcm1pb3MgKm91dF90ZXJtaW9z
KTxicj4NCitzdGF0aWMgaW5saW5lIHZvaWQgZ2V0X3Rlcm1pb3Moc3RydWN0IHR0eV9zdHJ1Y3Qg
KnR0eSw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
c3RydWN0IGt0ZXJtaW9zICpvdXRfdGVybWlvcyk8YnI+DQrCoHs8YnI+DQrCoCDCoCDCoCDCoCBk
b3duX3JlYWQoJmFtcDt0dHktJmd0O3Rlcm1pb3NfcndzZW0pOzxicj4NCsKgIMKgIMKgIMKgICpv
dXRfdGVybWlvcyA9IHR0eS0mZ3Q7dGVybWlvczs8YnI+DQpAQCAtMTY3LDggKzE2OCw5IEBAIHN0
YXRpYyBpbnQgc3BrX3R0eWlvX2luaXRpYWxpc2VfbGRpc2Moc3RydWN0IHNwa19zeW50aCAqc3lu
dGgpPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgdG1wX3Rlcm1pb3MuY19jZmxhZyB8PSBD
UlRTQ1RTOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHR0eV9zZXRfdGVybWlvcyh0dHks
ICZhbXA7dG1wX3Rlcm1pb3MpOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIC8qPGJyPg0K
LcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICogY2hlY2sgY19jZmxhZyB0byBzZWUgaWYgaXQmIzM5
O3MgdXBkYXRlZCBhcyB0dHlfc2V0X3Rlcm1pb3MgbWF5IG5vdCByZXR1cm48YnI+DQotwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgKiBlcnJvciBldmVuIHdoZW4gbm8gdHR5IGJpdHMgYXJlIGNoYW5n
ZWQgYnkgdGhlIHJlcXVlc3QuPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICogY2hlY2sg
Y19jZmxhZyB0byBzZWUgaWYgaXQmIzM5O3MgdXBkYXRlZCBhcyB0dHlfc2V0X3Rlcm1pb3M8YnI+
DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKiBtYXkgbm90IHJldHVybiBlcnJvciBldmVuIHdo
ZW4gbm8gdHR5IGJpdHMgYXJlPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICogY2hhbmdl
ZCBieSB0aGUgcmVxdWVzdC48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCovPGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZ2V0X3Rlcm1pb3ModHR5LCAmYW1wO3RtcF90ZXJtaW9z
KTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoISh0bXBfdGVybWlvcy5jX2NmbGFn
ICZhbXA7IENSVFNDVFMpKTxicj4NCkBAIC0yMDcsMTAgKzIwOSwxMSBAQCBzdGF0aWMgaW50IHNw
a190dHlpb19vdXQoc3RydWN0IHNwa19zeW50aCAqaW5fc3ludGgsIGNvbnN0IGNoYXIgY2gpPGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLyogTm8gcm9vbSAqLzxicj4N
CsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiAwOzxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIGlmIChyZXQgJmx0OyAwKSB7PGJyPg0KLcKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJfd2FybigmcXVvdDslczogSS9PIGVycm9yLCBkZWFjdGl2
YXRpbmcgc3BlYWt1cFxuJnF1b3Q7LCBpbl9zeW50aC0mZ3Q7bG9uZ19uYW1lKTs8YnI+DQotwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvKiBObyBzeW50aCBhbnkgbW9yZSwgc28g
bm9ib2R5IHdpbGwgcmVzdGFydCBUVFlzLCBhbmQgd2UgdGh1czxicj4NCi3CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqIG5lZWQgdG8gZG8gaXQgb3Vyc2VsdmVzLsKgIE5vdyB0
aGF0IHRoZXJlIGlzIG5vIHN5bnRoIHdlIGNhbjxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAqIGxldCBhcHBsaWNhdGlvbiBmbG9vZCBhbnl3YXk8YnI+DQorwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwcl93YXJuKCZxdW90OyVzOiBJL08gZXJyb3Is
IGRlYWN0aXZhdGluZyBzcGVha3VwXG4mcXVvdDssPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW5fc3ludGgtJmd0O2xvbmdfbmFtZSk7PGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogTm8gc3ludGggYW55IG1vcmUs
IHNvIG5vYm9keSB3aWxsIHJlc3RhcnQgVFRZcyw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgKiBhbmQgd2UgdGh1cyBuZWVkIHRvIGRvIGl0IG91cnNlbHZlcy7CoCBO
b3cgdGhhdCB0aGVyZTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAq
IGlzIG5vIHN5bnRoIHdlIGNhbiBsZXQgYXBwbGljYXRpb24gZmxvb2QgYW55d2F5PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAqLzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGluX3N5bnRoLSZndDthbGl2ZSA9IDA7PGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3BlYWt1cF9zdGFydF90dHlzKCk7PGJyPg0K
QEAgLTM3MSw3ICszNzQsOCBAQCBjb25zdCBjaGFyICpzcGtfdHR5aW9fc3ludGhfaW1tZWRpYXRl
KHN0cnVjdCBzcGtfc3ludGggKnN5bnRoLCBjb25zdCBjaGFyICpidWZmKTxicj4NCsKgIMKgIMKg
IMKgIHdoaWxlICgoY2ggPSAqYnVmZikpIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBp
ZiAoY2ggPT0gJiMzOTtcbiYjMzk7KTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIGNoID0gc3ludGgtJmd0O3Byb2NzcGVlY2g7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgaWYgKHR0eV93cml0ZV9yb29tKHNwZWFrdXBfdHR5KSAmbHQ7IDEgfHwgIXN5bnRoLSZn
dDtpb19vcHMtJmd0O3N5bnRoX291dChzeW50aCwgY2gpKTxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGlmICh0dHlfd3JpdGVfcm9vbShzcGVha3VwX3R0eSkgJmx0OyAxIHx8PGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIXN5bnRoLSZndDtpb19vcHMtJmd0O3N5bnRoX291
dChzeW50aCwgY2gpKTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJl
dHVybiBidWZmOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJ1ZmYrKzs8YnI+DQrCoCDC
oCDCoCDCoCB9PGJyPg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9zcGVha3VwL3Zhcmhh
bmRsZXJzLmMgYi9kcml2ZXJzL3N0YWdpbmcvc3BlYWt1cC92YXJoYW5kbGVycy5jPGJyPg0KaW5k
ZXggMWI1NDUxNS4uNzNkOGQ0YyAxMDA2NDQ8YnI+DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvc3Bl
YWt1cC92YXJoYW5kbGVycy5jPGJyPg0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvdmFy
aGFuZGxlcnMuYzxicj4NCkBAIC0yMzgsNyArMjM4LDggQEAgaW50IHNwa19zZXRfbnVtX3Zhcihp
bnQgaW5wdXQsIHN0cnVjdCBzdF92YXJfaGVhZGVyICp2YXIsIGludCBob3cpPGJyPg0KwqAgwqAg
wqAgwqAgaWYgKCF2YXJfZGF0YS0mZ3Q7dS5uLm91dF9zdHIpPGJyPg0KwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgc3ByaW50ZihjcCwgdmFyX2RhdGEtJmd0O3Uubi5zeW50aF9mbXQsIChpbnQpdmFs
KTs8YnI+DQrCoCDCoCDCoCDCoCBlbHNlPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3By
aW50ZihjcCwgdmFyX2RhdGEtJmd0O3Uubi5zeW50aF9mbXQsIHZhcl9kYXRhLSZndDt1Lm4ub3V0
X3N0clt2YWxdKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzcHJpbnRmKGNwLCB2YXJf
ZGF0YS0mZ3Q7dS5uLnN5bnRoX2ZtdCw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB2YXJfZGF0YS0mZ3Q7dS5uLm91dF9zdHJbdmFsXSk7PGJyPg0KwqAgwqAgwqAgwqAg
c3ludGhfcHJpbnRmKCZxdW90OyVzJnF1b3Q7LCBjcCk7PGJyPg0KwqAgwqAgwqAgwqAgcmV0dXJu
IDA7PGJyPg0KwqB9PGJyPg0KLS0gPGJyPg0KMi43LjQ8YnI+DQo8YnI+DQo8L2Jsb2NrcXVvdGU+
PC9kaXY+PC9kaXY+DQo=
--000000000000c2a5cf0582f3b14f--

