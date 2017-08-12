defmodule HelloWorld do
  @moduledoc """
  Documentation for HelloWorld.
  """

  #@doc """
  #Hello world.

  ### Examples

      #iex> HelloWorld.hello
      #:world

  #"""
  #def hello do
    #:world
  #end

  use Application

  def start(_type, _args) do
    port = Application.get_env(:hello_world, :port)
    Plug.Adapters.Cowboy.http(HelloWorld.Router,[], [port: port])
  end
end
