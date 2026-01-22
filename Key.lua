local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local success, KeyNoSite = pcall(function()
    return game:HttpGet("https://pastebin.com/raw/vWgkpRzB")
end)

local Window = Rayfield:CreateWindow({
   Name = "Fogo Hub | Sistema de key",
   LoadingTitle = "Iniciando...",
   LoadingSubtitle = "by KiBenBlox",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Início", 4483362458)

Tab:CreateSection("Obter Acesso")

Tab:CreateButton({
   Name = "Copiar Link da Key",
   Callback = function()
       setclipboard("https://lootdest.org/s?WTvvpxlx")
       Rayfield:Notify({
           Title = "Copiado!",
           Content = "O link foi copiado.",
           Duration = 5
       })
   end,
})

Tab:CreateSection("Verificação")

local InputKey = ""
Tab:CreateInput({
   Name = "Insira a Key",
   PlaceholderText = "Cole a key aqui...",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
       InputKey = Text
   end,
})

Tab:CreateButton({
   Name = "Verificar Key",
   Callback = function()
       if InputKey == KeyNoSite then
           Rayfield:Notify({
               Title = "Sucesso!",
               Content = "Key correta! Iniciando Fogo Hub...",
               Duration = 5
           })
           task.wait(2.5)
           Rayfield:Destroy()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/KiBenYT/FogoHubBrookRP/refs/heads/main/Script.lua"))()
       else
           Rayfield:Notify({
               Title = "Erro!",
               Content = "Key incorreta!",
               Duration = 5
           })
       end
   end,
})
